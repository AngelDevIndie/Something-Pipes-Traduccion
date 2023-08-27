.data
int var000000 = 0 ; unreferenced variable, assuming char
int var000004 = 0
int var000008 = 0
int var000012 = 0
int var000016 = 0
char[12] var000020 = 0 ; unreferenced variable, assuming char
int var000032 = 0
int var000036 = 0
int var000040 = 0
int var000044 = 0
char[8] var000048 = 0 ; unreferenced variable, assuming char
int var000056 = 0
char[3528] var000060 = 0 ; unreferenced variable, assuming char
int var003588 = 0
int var003592 = 0
int var003596 = -1
int var003600 = 0
int var003604 = 0
int var003608 = 0
int var003612 = 0
int var003616 = 0
int var003620 = 0
int var003624 = 0
int var003628 = 0
int var003632 = 0
int var003636 = 0
.text

_ShouldLeaveAudioAlone$1: ; 1 args
	sourceline 194
	thisaddr 0
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 195
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000000055
	push ax
	li ax, 0
	setfuncargs 0
	li ax, Game::get_SkippingCutscene
	farcall ax
	pop bx
	lor bx, ax
	mr ax, bx
label000000000055: ; inside _ShouldLeaveAudioAlone$1, ; referenced by 1 spots
	ptrstack 8
	ptrzerond 
	ret 
	sourceline 196
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

_GetTweenRemainingDuration$1: ; 1 args
	sourceline 199
	thisaddr 68
	sourceline 200
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000012
	add mar, cx
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000016
	add mar, cx
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	ret 
	sourceline 201
	li ax, 0
	ret 

_CheckIfIsLongestTween$1: ; 1 args
	sourceline 205
	thisaddr 133
	sourceline 206
	ptrstack 8
	memread4 ax
	push ax
	li ax, _GetTweenRemainingDuration$1
	call ax
	subi sp, 4
	li mar, @var003600
	memwrite4 ax
	sourceline 208
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000008
	add mar, cx
	memread4 ax
	push ax
	li ax, 7002
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000000240
	push ax
	ptrstack 12
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000008
	add mar, cx
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpne bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000000240: ; inside _CheckIfIsLongestTween$1, ; referenced by 1 spots
	jzi label000000000272
	push ax
	li mar, @var003600
	memread4 ax
	push ax
	li mar, @var003588
	memread4 ax
	pop bx
	fgt bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000000272: ; inside _CheckIfIsLongestTween$1, ; referenced by 1 spots
	jzi label000000000286
	sourceline 212
	li mar, @var003600
	memread4 ax
	li mar, @var003588
	memwrite4 ax
label000000000286: ; inside _CheckIfIsLongestTween$1, ; referenced by 1 spots
	sourceline 214
	li ax, 0
	ret 

TweenGame::GetRFromColor$1: ; 1 args
	sourceline 220
	thisaddr 292
	sourceline 221
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 222
	li ax, 0
	farpush ax
	ptrstack 4
	memread4 ax
	push ax
	li ax, 1157627904
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 8
	pop bx
	mul bx, ax
	mr ax, bx
	subi sp, 4
	ret 
	sourceline 223
	li ax, 0
	subi sp, 4
	ret 

TweenGame::GetGFromColor$1: ; 1 args
	sourceline 225
	thisaddr 382
	sourceline 226
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 227
	li ax, 0
	farpush ax
	ptrstack 4
	memread4 ax
	push ax
	li ax, 0
	farpush ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1157627904
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 2048
	pop bx
	mul bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 1115684864
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 8
	pop bx
	mul bx, ax
	mr ax, bx
	subi sp, 4
	ret 
	sourceline 228
	li ax, 0
	subi sp, 4
	ret 

TweenGame::GetBFromColor$1: ; 1 args
	sourceline 230
	thisaddr 539
	sourceline 231
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 233
	ptrstack 4
	memread4 ax
	push ax
	li ax, 0
	farpush ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1157627904
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 2048
	pop bx
	mul bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	pop bx
	fsub bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 234
	li ax, 0
	farpush ax
	ptrstack 4
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 236
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	farpush ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1115684864
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 64
	pop bx
	mul bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	pop bx
	fsub bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 237
	li ax, 0
	farpush ax
	ptrstack 4
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 239
	ptrstack 4
	memread4 ax
	push ax
	li ax, 8
	pop bx
	mul bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 241
	ptrstack 4
	memread4 ax
	push ax
	li ax, 255
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000000887
	sourceline 242
	ptrstack 8
	memread4 ax
	push ax
	li ax, 31
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	li ax, 8
	pop bx
	mul bx, ax
	mr ax, bx
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
label000000000887: ; inside TweenGame::GetBFromColor$1, ; referenced by 1 spots
	sourceline 245
	ptrstack 4
	memread4 ax
	subi sp, 24
	ret 
	sourceline 246
	li ax, 0
	subi sp, 24
	ret 

TweenMaths::Abs$1: ; 1 args
	sourceline 252
	thisaddr 906
	sourceline 253
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000000947
	sourceline 254
	ptrstack 8
	memread4 ax
	li bx, 0
	fsub bx, ax
	mr ax, bx
	ret 
label000000000947: ; inside TweenMaths::Abs$1, ; referenced by 1 spots
	sourceline 256
	ptrstack 8
	memread4 ax
	ret 
	sourceline 257
	li ax, 0
	ret 

TweenMaths::GetDistance$4: ; 4 args
	sourceline 259
	thisaddr 960
	sourceline 260
	li ax, 1073741824
	farpush ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	push ax
	li ax, 1073741824
	farpush ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fadd bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sqrt^1
	farcall ax
	farsubsp 1
	ret 
	sourceline 264
	li ax, 0
	ret 

TweenMaths::Lerp$3: ; 3 args
	sourceline 266
	thisaddr 1084
	sourceline 267
	li ax, 1
	farpush ax
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fadd bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	ret 
	sourceline 268
	li ax, 0
	ret 

TweenMaths::ClampInt$3: ; 3 args
	sourceline 270
	thisaddr 1159
	sourceline 271
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001192
	ptrstack 16
	memread4 ax
	ret 
	jmpi label000000001219
label000000001192: ; inside TweenMaths::ClampInt$3, ; referenced by 1 spots
	sourceline 272
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000001219
	ptrstack 12
	memread4 ax
	ret 
label000000001219: ; inside TweenMaths::ClampInt$3, ; referenced by 2 spots
	sourceline 273
	ptrstack 8
	memread4 ax
	ret 
	sourceline 274
	li ax, 0
	ret 

TweenMaths::MaxInt$2: ; 2 args
	sourceline 276
	thisaddr 1232
	sourceline 277
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001263
	ptrstack 8
	memread4 ax
	ret 
label000000001263: ; inside TweenMaths::MaxInt$2, ; referenced by 1 spots
	sourceline 278
	ptrstack 12
	memread4 ax
	ret 
	sourceline 279
	li ax, 0
	ret 

TweenMaths::MinInt$2: ; 2 args
	sourceline 281
	thisaddr 1276
	sourceline 282
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000001307
	ptrstack 8
	memread4 ax
	ret 
label000000001307: ; inside TweenMaths::MinInt$2, ; referenced by 1 spots
	sourceline 283
	ptrstack 12
	memread4 ax
	ret 
	sourceline 284
	li ax, 0
	ret 

TweenMaths::ClampFloat$3: ; 3 args
	sourceline 286
	thisaddr 1320
	sourceline 287
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fgt bx, ax
	mr ax, bx
	jzi label000000001353
	ptrstack 16
	memread4 ax
	ret 
	jmpi label000000001380
label000000001353: ; inside TweenMaths::ClampFloat$3, ; referenced by 1 spots
	sourceline 288
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000001380
	ptrstack 12
	memread4 ax
	ret 
label000000001380: ; inside TweenMaths::ClampFloat$3, ; referenced by 2 spots
	sourceline 289
	ptrstack 8
	memread4 ax
	ret 
	sourceline 290
	li ax, 0
	ret 

TweenMaths::MaxFloat$2: ; 2 args
	sourceline 292
	thisaddr 1393
	sourceline 293
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fgt bx, ax
	mr ax, bx
	jzi label000000001424
	ptrstack 8
	memread4 ax
	ret 
label000000001424: ; inside TweenMaths::MaxFloat$2, ; referenced by 1 spots
	sourceline 294
	ptrstack 12
	memread4 ax
	ret 
	sourceline 295
	li ax, 0
	ret 

TweenMaths::MinFloat$2: ; 2 args
	sourceline 297
	thisaddr 1437
	sourceline 298
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000001468
	ptrstack 8
	memread4 ax
	ret 
label000000001468: ; inside TweenMaths::MinFloat$2, ; referenced by 1 spots
	sourceline 299
	ptrstack 12
	memread4 ax
	ret 
	sourceline 300
	li ax, 0
	ret 

SecondsToLoops$1: ; 1 args
	sourceline 306
	thisaddr 1481
	sourceline 307
	li ax, 1
	farpush ax
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	ret 
	sourceline 308
	li ax, 0
	ret 

LoopsToSeconds$1: ; 1 args
	sourceline 310
	thisaddr 1542
	sourceline 311
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push ax
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	pop bx
	fdiv bx, ax
	mr ax, bx
	ret 
	sourceline 312
	li ax, 0
	ret 

WaitSeconds$1: ; 1 args
	sourceline 314
	thisaddr 1598
	sourceline 315
	ptrstack 8
	memread4 ax
	push ax
	li ax, SecondsToLoops$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 316
	li ax, 0
	ret 

WaitForLongest$6: ; 6 args
	sourceline 318
	thisaddr 1635
	sourceline 327
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001671
	sourceline 328
	ptrstack 12
	memread4 ax
	ptrstack 8
	memwrite4 ax
label000000001671: ; inside WaitForLongest$6, ; referenced by 1 spots
	sourceline 330
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001703
	sourceline 331
	ptrstack 16
	memread4 ax
	ptrstack 8
	memwrite4 ax
label000000001703: ; inside WaitForLongest$6, ; referenced by 1 spots
	sourceline 333
	ptrstack 20
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001735
	sourceline 334
	ptrstack 20
	memread4 ax
	ptrstack 8
	memwrite4 ax
label000000001735: ; inside WaitForLongest$6, ; referenced by 1 spots
	sourceline 336
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001767
	sourceline 337
	ptrstack 24
	memread4 ax
	ptrstack 8
	memwrite4 ax
label000000001767: ; inside WaitForLongest$6, ; referenced by 1 spots
	sourceline 339
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001799
	sourceline 340
	ptrstack 28
	memread4 ax
	ptrstack 8
	memwrite4 ax
label000000001799: ; inside WaitForLongest$6, ; referenced by 1 spots
	sourceline 342
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 343
	li ax, 0
	ret 

SetTimerWithSeconds$2: ; 2 args
	sourceline 345
	thisaddr 1822
	sourceline 346
	ptrstack 12
	memread4 ax
	push ax
	li ax, SecondsToLoops$1
	call ax
	subi sp, 4
	farpush ax
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	sourceline 347
	li ax, 0
	ret 

SetTimerForLongest$7: ; 7 args
	sourceline 349
	thisaddr 1865
	sourceline 358
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001901
	sourceline 359
	ptrstack 16
	memread4 ax
	ptrstack 12
	memwrite4 ax
label000000001901: ; inside SetTimerForLongest$7, ; referenced by 1 spots
	sourceline 361
	ptrstack 20
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001933
	sourceline 362
	ptrstack 20
	memread4 ax
	ptrstack 12
	memwrite4 ax
label000000001933: ; inside SetTimerForLongest$7, ; referenced by 1 spots
	sourceline 364
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001965
	sourceline 365
	ptrstack 24
	memread4 ax
	ptrstack 12
	memwrite4 ax
label000000001965: ; inside SetTimerForLongest$7, ; referenced by 1 spots
	sourceline 367
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001997
	sourceline 368
	ptrstack 28
	memread4 ax
	ptrstack 12
	memwrite4 ax
label000000001997: ; inside SetTimerForLongest$7, ; referenced by 1 spots
	sourceline 370
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000002029
	sourceline 371
	ptrstack 32
	memread4 ax
	ptrstack 12
	memwrite4 ax
label000000002029: ; inside SetTimerForLongest$7, ; referenced by 1 spots
	sourceline 373
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	sourceline 374
	li ax, 0
	ret 

SpeedToSeconds$5: ; 5 args
	sourceline 376
	thisaddr 2058
	sourceline 377
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::GetDistance$4
	call ax
	subi sp, 16
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ret 
	sourceline 378
	li ax, 0
	ret 

TweenEasing::EaseLinear$2: ; 2 args
	sourceline 415
	thisaddr 2117
	sourceline 416
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ret 
	sourceline 417
	li ax, 0
	ret 

TweenEasing::EaseInSine$4: ; 4 args
	sourceline 419
	thisaddr 2148
	sourceline 420
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, 1070141403
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Cos^1
	farcall ax
	farsubsp 1
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 421
	li ax, 0
	ret 

TweenEasing::EaseOutSine$4: ; 4 args
	sourceline 422
	thisaddr 2254
	sourceline 423
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, 1070141403
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sin^1
	farcall ax
	farsubsp 1
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 424
	li ax, 0
	ret 

TweenEasing::EaseInOutSine$4: ; 4 args
	sourceline 425
	thisaddr 2337
	sourceline 426
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 0
	setfuncargs 0
	li ax, Maths::get_Pi
	farcall ax
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Cos^1
	farcall ax
	farsubsp 1
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 427
	li ax, 0
	ret 

TweenEasing::EaseInPower$5: ; 5 args
	sourceline 429
	thisaddr 2462
	sourceline 430
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 431
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 432
	li ax, 0
	ret 

TweenEasing::EaseOutPower$5: ; 5 args
	sourceline 433
	thisaddr 2548
	sourceline 434
	li ax, 1065353216
	li mar, @var003608
	memwrite4 ax
	sourceline 435
	li ax, 0
	farpush ax
	ptrstack 24
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 2
	pop bx
	mod bx, ax
	mr ax, bx
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002652
	sourceline 436
	ptrstack 16
	memread4 ax
	li bx, 0
	fsub bx, ax
	mr ax, bx
	ptrstack 16
	memwrite4 ax
	sourceline 437
	li mar, @var003608
	memread4 ax
	li bx, 0
	fsub bx, ax
	mr ax, bx
	li mar, @var003608
	memwrite4 ax
label000000002652: ; inside TweenEasing::EaseOutPower$5, ; referenced by 1 spots
	sourceline 439
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 440
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 441
	li ax, 0
	ret 

TweenEasing::EaseInOutPower$5: ; 5 args
	sourceline 442
	thisaddr 2762
	sourceline 443
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 444
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000002887
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 28
	memread4 ax
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000002887: ; inside TweenEasing::EaseInOutPower$5, ; referenced by 1 spots
	sourceline 445
	li ax, 1073741824
	li mar, @var003608
	memwrite4 ax
	sourceline 446
	li ax, 0
	farpush ax
	ptrstack 24
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 2
	pop bx
	mod bx, ax
	mr ax, bx
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002985
	sourceline 447
	ptrstack 16
	memread4 ax
	li bx, 0
	fsub bx, ax
	mr ax, bx
	ptrstack 16
	memwrite4 ax
	sourceline 448
	li ax, 1073741824
	li bx, 0
	fsub bx, ax
	mr ax, bx
	li mar, @var003608
	memwrite4 ax
label000000002985: ; inside TweenEasing::EaseInOutPower$5, ; referenced by 1 spots
	sourceline 450
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 28
	memread4 ax
	farpush ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fsub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 451
	li ax, 0
	ret 

TweenEasing::EaseInQuad$4: ; 4 args
	sourceline 453
	thisaddr 3084
	sourceline 454
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 455
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 456
	li ax, 0
	ret 

TweenEasing::EaseOutQuad$4: ; 4 args
	sourceline 457
	thisaddr 3167
	sourceline 458
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 459
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 460
	li ax, 0
	ret 

TweenEasing::EaseInOutQuad$4: ; 4 args
	sourceline 461
	thisaddr 3272
	sourceline 462
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 463
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000003394
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000003394: ; inside TweenEasing::EaseInOutQuad$4, ; referenced by 1 spots
	sourceline 464
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 465
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 466
	li ax, 0
	ret 

TweenEasing::EaseInExpo$4: ; 4 args
	sourceline 468
	thisaddr 3520
	sourceline 469
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003550
	ptrstack 12
	memread4 ax
	ret 
label000000003550: ; inside TweenEasing::EaseInExpo$4, ; referenced by 1 spots
	sourceline 470
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1092616192
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 471
	li ax, 0
	ret 

TweenEasing::EaseOutExpo$4: ; 4 args
	sourceline 472
	thisaddr 3647
	sourceline 473
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003692
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000003692: ; inside TweenEasing::EaseOutExpo$4, ; referenced by 1 spots
	sourceline 474
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1092616192
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 475
	li ax, 0
	ret 

TweenEasing::EaseInOutExpo$4: ; 4 args
	sourceline 476
	thisaddr 3807
	sourceline 477
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003837
	ptrstack 12
	memread4 ax
	ret 
label000000003837: ; inside TweenEasing::EaseInOutExpo$4, ; referenced by 1 spots
	sourceline 478
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003878
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000003878: ; inside TweenEasing::EaseInOutExpo$4, ; referenced by 1 spots
	sourceline 479
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 480
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000004024
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1092616192
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000004024: ; inside TweenEasing::EaseInOutExpo$4, ; referenced by 1 spots
	sourceline 481
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 482
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1092616192
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 1073741824
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 483
	li ax, 0
	ret 

TweenEasing::EaseInCirc$4: ; 4 args
	sourceline 485
	thisaddr 4161
	sourceline 486
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 487
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fsub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sqrt^1
	farcall ax
	farsubsp 1
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 488
	li ax, 0
	ret 

TweenEasing::EaseOutCirc$4: ; 4 args
	sourceline 489
	thisaddr 4290
	sourceline 490
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 491
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fsub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sqrt^1
	farcall ax
	farsubsp 1
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 492
	li ax, 0
	ret 

TweenEasing::EaseInOutCirc$4: ; 4 args
	sourceline 493
	thisaddr 4410
	sourceline 494
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 495
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000004578
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fsub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sqrt^1
	farcall ax
	farsubsp 1
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000004578: ; inside TweenEasing::EaseInOutCirc$4, ; referenced by 1 spots
	sourceline 496
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 497
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fsub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sqrt^1
	farcall ax
	farsubsp 1
	push ax
	li ax, 1065353216
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 498
	li ax, 0
	ret 

TweenEasing::EaseInBack$4: ; 4 args
	sourceline 500
	thisaddr 4706
	sourceline 501
	li ax, 1071238496
	li mar, @var003608
	memwrite4 ax
	sourceline 502
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 503
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 504
	li ax, 0
	ret 

TweenEasing::EaseOutBack$4: ; 4 args
	sourceline 505
	thisaddr 4856
	sourceline 506
	li ax, 1071238496
	li mar, @var003608
	memwrite4 ax
	sourceline 507
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 508
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1065353216
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 509
	li ax, 0
	ret 

TweenEasing::EaseInOutBack$4: ; 4 args
	sourceline 510
	thisaddr 5032
	sourceline 511
	li ax, 1071238496
	li mar, @var003608
	memwrite4 ax
	sourceline 512
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 513
	li mar, @var003608
	memread4 ax
	push ax
	li ax, 1069757235
	pop bx
	fmul bx, ax
	mr ax, bx
	li mar, @var003608
	memwrite4 ax
	sourceline 514
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000005246
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000005246: ; inside TweenEasing::EaseInOutBack$4, ; referenced by 1 spots
	sourceline 515
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 516
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1073741824
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 517
	li ax, 0
	ret 

TweenEasing::EaseOutBounce$4: ; 4 args
	sourceline 519
	thisaddr 5407
	sourceline 520
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 521
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 1076887552
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000005531
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1089601536
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	jmpi label000000005825
label000000005531: ; inside TweenEasing::EaseOutBounce$4, ; referenced by 1 spots
	sourceline 522
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1073741824
	push ax
	li ax, 1076887552
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000005680
	sourceline 523
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1069547520
	push ax
	li ax, 1076887552
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 524
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1089601536
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1061158912
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 525
	jmpi label000000005825
label000000005680: ; inside TweenEasing::EaseOutBounce$4, ; referenced by 1 spots
	sourceline 526
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1075838976
	push ax
	li ax, 1076887552
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000005825
	sourceline 527
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1074790400
	push ax
	li ax, 1076887552
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 528
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1089601536
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1064304640
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000005825: ; inside TweenEasing::EaseOutBounce$4, ; referenced by 3 spots
	sourceline 530
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1076363264
	push ax
	li ax, 1076887552
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 531
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1089601536
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1065091072
	pop bx
	fadd bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 532
	li ax, 0
	ret 

TweenEasing::EaseInBounce$4: ; 4 args
	sourceline 533
	thisaddr 5942
	sourceline 534
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, TweenEasing::EaseOutBounce$4
	call ax
	subi sp, 16
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 535
	li ax, 0
	ret 

TweenEasing::EaseInOutBounce$4: ; 4 args
	sourceline 536
	thisaddr 6028
	sourceline 537
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fdiv bx, ax
	mr ax, bx
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000006139
	ptrstack 20
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, TweenEasing::EaseInBounce$4
	call ax
	subi sp, 16
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000006139: ; inside TweenEasing::EaseInOutBounce$4, ; referenced by 1 spots
	sourceline 538
	ptrstack 20
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 36
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, TweenEasing::EaseOutBounce$4
	call ax
	subi sp, 16
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 539
	li ax, 0
	ret 

TweenEasing::EaseInElastic$4: ; 4 args
	sourceline 541
	thisaddr 6260
	sourceline 542
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006290
	ptrstack 12
	memread4 ax
	ret 
label000000006290: ; inside TweenEasing::EaseInElastic$4, ; referenced by 1 spots
	sourceline 543
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 544
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006354
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000006354: ; inside TweenEasing::EaseInElastic$4, ; referenced by 1 spots
	sourceline 545
	ptrstack 20
	memread4 ax
	push ax
	li ax, 1050253722
	pop bx
	fmul bx, ax
	mr ax, bx
	li mar, @var003604
	memwrite4 ax
	sourceline 546
	li mar, @var003604
	memread4 ax
	push ax
	li ax, 1082130432
	pop bx
	fdiv bx, ax
	mr ax, bx
	li mar, @var003608
	memwrite4 ax
	sourceline 547
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 548
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1092616192
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 1086918619
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003604
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sin^1
	farcall ax
	farsubsp 1
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 549
	li ax, 0
	ret 

TweenEasing::EaseOutElastic$4: ; 4 args
	sourceline 550
	thisaddr 6587
	sourceline 551
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006617
	ptrstack 12
	memread4 ax
	ret 
label000000006617: ; inside TweenEasing::EaseOutElastic$4, ; referenced by 1 spots
	sourceline 552
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 553
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006681
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000006681: ; inside TweenEasing::EaseOutElastic$4, ; referenced by 1 spots
	sourceline 554
	ptrstack 20
	memread4 ax
	push ax
	li ax, 1050253722
	pop bx
	fmul bx, ax
	mr ax, bx
	li mar, @var003604
	memwrite4 ax
	sourceline 555
	li mar, @var003604
	memread4 ax
	push ax
	li ax, 1082130432
	pop bx
	fdiv bx, ax
	mr ax, bx
	li mar, @var003608
	memwrite4 ax
	sourceline 556
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1092616192
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 1086918619
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003604
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sin^1
	farcall ax
	farsubsp 1
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 557
	li ax, 0
	ret 

TweenEasing::EaseInOutElastic$4: ; 4 args
	sourceline 558
	thisaddr 6905
	sourceline 559
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006935
	ptrstack 12
	memread4 ax
	ret 
label000000006935: ; inside TweenEasing::EaseInOutElastic$4, ; referenced by 1 spots
	sourceline 560
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fdiv bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 561
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1073741824
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007012
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000007012: ; inside TweenEasing::EaseInOutElastic$4, ; referenced by 1 spots
	sourceline 562
	ptrstack 20
	memread4 ax
	push ax
	li ax, 1050253722
	push ax
	li ax, 1069547520
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	li mar, @var003604
	memwrite4 ax
	sourceline 563
	li mar, @var003604
	memread4 ax
	push ax
	li ax, 1082130432
	pop bx
	fdiv bx, ax
	mr ax, bx
	li mar, @var003608
	memwrite4 ax
	sourceline 564
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000007286
	sourceline 565
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 566
	li ax, 1056964608
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, 1092616192
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 1086918619
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003604
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sin^1
	farcall ax
	farsubsp 1
	pop bx
	fmul bx, ax
	mr ax, bx
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
label000000007286: ; inside TweenEasing::EaseInOutElastic$4, ; referenced by 1 spots
	sourceline 568
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1065353216
	pop bx
	fsub bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 569
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1092616192
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	li bx, 0
	fsub bx, ax
	mr ax, bx
	farpush ax
	li ax, 1073741824
	farpush ax
	setfuncargs 2
	li ax, Maths::RaiseToPower^2
	farcall ax
	farsubsp 2
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003608
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	push ax
	li ax, 1086918619
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li mar, @var003604
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 1
	li ax, Maths::Sin^1
	farcall ax
	farsubsp 1
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	li ax, 1056964608
	pop bx
	fmul bx, ax
	mr ax, bx
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	fadd bx, ax
	mr ax, bx
	ret 
	sourceline 570
	li ax, 0
	ret 

TweenEasing::GetValue$3: ; 3 args
	sourceline 572
	thisaddr 7497
	sourceline 573
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007543
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, TweenEasing::EaseLinear$2
	call ax
	subi sp, 8
	ret 
label000000007543: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 574
	ptrstack 16
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007595
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInSine$4
	call ax
	subi sp, 16
	ret 
label000000007595: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 575
	ptrstack 16
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007647
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutSine$4
	call ax
	subi sp, 16
	ret 
label000000007647: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 576
	ptrstack 16
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007699
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutSine$4
	call ax
	subi sp, 16
	ret 
label000000007699: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 577
	ptrstack 16
	memread4 ax
	push ax
	li ax, 8
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007756
	li ax, 1077936128
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInPower$5
	call ax
	subi sp, 20
	ret 
label000000007756: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 578
	ptrstack 16
	memread4 ax
	push ax
	li ax, 9
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007813
	li ax, 1077936128
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutPower$5
	call ax
	subi sp, 20
	ret 
label000000007813: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 579
	ptrstack 16
	memread4 ax
	push ax
	li ax, 10
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007870
	li ax, 1077936128
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutPower$5
	call ax
	subi sp, 20
	ret 
label000000007870: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 580
	ptrstack 16
	memread4 ax
	push ax
	li ax, 11
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007927
	li ax, 1082130432
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInPower$5
	call ax
	subi sp, 20
	ret 
label000000007927: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 581
	ptrstack 16
	memread4 ax
	push ax
	li ax, 12
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007984
	li ax, 1082130432
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutPower$5
	call ax
	subi sp, 20
	ret 
label000000007984: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 582
	ptrstack 16
	memread4 ax
	push ax
	li ax, 13
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008041
	li ax, 1082130432
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutPower$5
	call ax
	subi sp, 20
	ret 
label000000008041: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 583
	ptrstack 16
	memread4 ax
	push ax
	li ax, 14
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008098
	li ax, 1084227584
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInPower$5
	call ax
	subi sp, 20
	ret 
label000000008098: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 584
	ptrstack 16
	memread4 ax
	push ax
	li ax, 15
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008155
	li ax, 1084227584
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutPower$5
	call ax
	subi sp, 20
	ret 
label000000008155: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 585
	ptrstack 16
	memread4 ax
	push ax
	li ax, 16
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008212
	li ax, 1084227584
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutPower$5
	call ax
	subi sp, 20
	ret 
label000000008212: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 586
	ptrstack 16
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008264
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInQuad$4
	call ax
	subi sp, 16
	ret 
label000000008264: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 587
	ptrstack 16
	memread4 ax
	push ax
	li ax, 6
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008316
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutQuad$4
	call ax
	subi sp, 16
	ret 
label000000008316: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 588
	ptrstack 16
	memread4 ax
	push ax
	li ax, 7
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008368
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutQuad$4
	call ax
	subi sp, 16
	ret 
label000000008368: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 589
	ptrstack 16
	memread4 ax
	push ax
	li ax, 20
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008420
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInExpo$4
	call ax
	subi sp, 16
	ret 
label000000008420: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 590
	ptrstack 16
	memread4 ax
	push ax
	li ax, 21
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008472
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutExpo$4
	call ax
	subi sp, 16
	ret 
label000000008472: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 591
	ptrstack 16
	memread4 ax
	push ax
	li ax, 22
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008524
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutExpo$4
	call ax
	subi sp, 16
	ret 
label000000008524: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 592
	ptrstack 16
	memread4 ax
	push ax
	li ax, 17
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008576
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInCirc$4
	call ax
	subi sp, 16
	ret 
label000000008576: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 593
	ptrstack 16
	memread4 ax
	push ax
	li ax, 18
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008628
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutCirc$4
	call ax
	subi sp, 16
	ret 
label000000008628: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 594
	ptrstack 16
	memread4 ax
	push ax
	li ax, 19
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008680
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutCirc$4
	call ax
	subi sp, 16
	ret 
label000000008680: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 595
	ptrstack 16
	memread4 ax
	push ax
	li ax, 23
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008732
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInBack$4
	call ax
	subi sp, 16
	ret 
label000000008732: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 596
	ptrstack 16
	memread4 ax
	push ax
	li ax, 24
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008784
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutBack$4
	call ax
	subi sp, 16
	ret 
label000000008784: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 597
	ptrstack 16
	memread4 ax
	push ax
	li ax, 25
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008836
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutBack$4
	call ax
	subi sp, 16
	ret 
label000000008836: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 598
	ptrstack 16
	memread4 ax
	push ax
	li ax, 26
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008888
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInElastic$4
	call ax
	subi sp, 16
	ret 
label000000008888: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 599
	ptrstack 16
	memread4 ax
	push ax
	li ax, 27
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008940
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutElastic$4
	call ax
	subi sp, 16
	ret 
label000000008940: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 600
	ptrstack 16
	memread4 ax
	push ax
	li ax, 28
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008992
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutElastic$4
	call ax
	subi sp, 16
	ret 
label000000008992: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 601
	ptrstack 16
	memread4 ax
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009044
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInBounce$4
	call ax
	subi sp, 16
	ret 
label000000009044: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 602
	ptrstack 16
	memread4 ax
	push ax
	li ax, 30
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009096
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseOutBounce$4
	call ax
	subi sp, 16
	ret 
label000000009096: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 603
	ptrstack 16
	memread4 ax
	push ax
	li ax, 31
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009148
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1065353216
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenEasing::EaseInOutBounce$4
	call ax
	subi sp, 16
	ret 
label000000009148: ; inside TweenEasing::GetValue$3, ; referenced by 1 spots
	sourceline 604
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, TweenEasing::EaseLinear$2
	call ax
	subi sp, 8
	ret 
	sourceline 605
	li ax, 0
	ret 

TweenBase::Restart$0: ; 0 args
	sourceline 612
	thisaddr 9177
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 613
	push op
	pop mar
	ptrassert 
	addi mar, 24
	memread4 ax
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memwrite4 ax
	sourceline 614
	li ax, 0
	subi sp, 4
	ret 

TweenBase::Reverse$0: ; 0 args
	sourceline 616
	thisaddr 9230
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 617
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 618
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memwrite4 ax
	sourceline 619
	ptrstack 4
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memwrite4 ax
	sourceline 621
	push op
	pop mar
	ptrassert 
	memread4 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 622
	ptrstack 4
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009348
	li ax, 2
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009348: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 623
	ptrstack 4
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009378
	li ax, 3
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009378: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 624
	ptrstack 4
	memread4 ax
	push ax
	li ax, 9
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009408
	li ax, 8
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009408: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 625
	ptrstack 4
	memread4 ax
	push ax
	li ax, 8
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009438
	li ax, 9
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009438: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 626
	ptrstack 4
	memread4 ax
	push ax
	li ax, 6
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009468
	li ax, 5
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009468: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 627
	ptrstack 4
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009498
	li ax, 6
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009498: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 628
	ptrstack 4
	memread4 ax
	push ax
	li ax, 15
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009528
	li ax, 14
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009528: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 629
	ptrstack 4
	memread4 ax
	push ax
	li ax, 14
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009558
	li ax, 15
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009558: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 630
	ptrstack 4
	memread4 ax
	push ax
	li ax, 12
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009588
	li ax, 11
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009588: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 631
	ptrstack 4
	memread4 ax
	push ax
	li ax, 11
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009618
	li ax, 12
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009618: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 632
	ptrstack 4
	memread4 ax
	push ax
	li ax, 21
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009648
	li ax, 20
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009648: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 633
	ptrstack 4
	memread4 ax
	push ax
	li ax, 20
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009678
	li ax, 21
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009678: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 634
	ptrstack 4
	memread4 ax
	push ax
	li ax, 18
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009708
	li ax, 17
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009708: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 635
	ptrstack 4
	memread4 ax
	push ax
	li ax, 17
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009738
	li ax, 18
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009738: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 636
	ptrstack 4
	memread4 ax
	push ax
	li ax, 27
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009768
	li ax, 26
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009768: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 637
	ptrstack 4
	memread4 ax
	push ax
	li ax, 26
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009798
	li ax, 27
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009798: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 638
	ptrstack 4
	memread4 ax
	push ax
	li ax, 30
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009828
	li ax, 29
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009828: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 639
	ptrstack 4
	memread4 ax
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009858
	li ax, 30
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009858: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 640
	ptrstack 4
	memread4 ax
	push ax
	li ax, 24
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009888
	li ax, 23
	ptrstack 4
	memwrite4 ax
	jmpi label000000009916
label000000009888: ; inside TweenBase::Reverse$0, ; referenced by 1 spots
	sourceline 641
	ptrstack 4
	memread4 ax
	push ax
	li ax, 23
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009916
	li ax, 24
	ptrstack 4
	memwrite4 ax
label000000009916: ; inside TweenBase::Reverse$0, ; referenced by 20 spots
	sourceline 642
	ptrstack 4
	memread4 ax
	push op
	pop mar
	ptrassert 
	memwrite4 ax
	sourceline 643
	li ax, 0
	subi sp, 12
	ret 

TweenBase::IsPlaying$0: ; 0 args
	sourceline 645
	thisaddr 9938
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 646
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000010027
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	pop bx
	flte bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000010027: ; inside TweenBase::IsPlaying$0, ; referenced by 1 spots
	subi sp, 4
	ret 
	sourceline 647
	li ax, 0
	subi sp, 4
	ret 

TweenBase::Init$7: ; 7 args
	sourceline 649
	thisaddr 10040
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 650
	ptrstack 36
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010159
	sourceline 651
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, SpeedToSeconds$5
	call ax
	subi sp, 20
	push ax
	li ax, 1065353216
	push ax
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, TweenMaths::MaxFloat$2
	call ax
	subi sp, 8
	ptrstack 12
	memwrite4 ax
label000000010159: ; inside TweenBase::Init$7, ; referenced by 1 spots
	sourceline 653
	ptrstack 16
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memwrite4 ax
	sourceline 654
	ptrstack 20
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memwrite4 ax
	sourceline 655
	ptrstack 12
	memread4 ax
	push ax
	li ax, SecondsToLoops$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memwrite4 ax
	sourceline 656
	ptrstack 32
	memread4 ax
	push ax
	li ax, TweenMaths::Abs$1
	call ax
	subi sp, 4
	push ax
	li ax, SecondsToLoops$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push op
	pop mar
	ptrassert 
	addi mar, 24
	memwrite4 ax
	sourceline 657
	push op
	pop mar
	ptrassert 
	addi mar, 24
	memread4 ax
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memwrite4 ax
	sourceline 658
	ptrstack 24
	memread4 ax
	push op
	pop mar
	ptrassert 
	memwrite4 ax
	sourceline 659
	ptrstack 28
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memwrite4 ax
	sourceline 661
	li ax, 2
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	pop bx
	fsub bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	subi sp, 4
	ret 
	sourceline 662
	li ax, 0
	subi sp, 4
	ret 

_TweenObject::InitTweenObject$7: ; 7 args
	sourceline 671
	thisaddr 10431
	ptrstack 28
	memread4 ax
	ptrinit ax
	ptrstack 32
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 672
	ptrstack 12
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memwrite4 ax
	sourceline 673
	ptrstack 16
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memwrite4 ax
	sourceline 674
	ptrstack 20
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 28
	memwrite4 ax
	sourceline 675
	ptrstack 24
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 32
	memwrite4 ax
	sourceline 676
	ptrstack 28
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memwrite4 ax
	sourceline 677
	ptrstack 32
	push mar
	pop mar
	ptrget ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrset ax
	sourceline 678
	ptrstack 36
	push mar
	pop mar
	ptrget ax
	push op
	pop mar
	ptrassert 
	addi mar, 52
	push mar
	pop mar
	ptrset ax
	sourceline 679
	li ax, 0
	ptrstack 32
	ptrzerond 
	ptrstack 36
	ptrzerond 
	subi sp, 4
	ret 

_TweenObject::Release$0: ; 0 args
	sourceline 681
	thisaddr 10621
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 682
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memwrite4 ax
	sourceline 683
	li ax, 0
	subi sp, 4
	ret 

_TweenObject::ReverseTweenObject$0: ; 0 args
	sourceline 685
	thisaddr 10667
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 686
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 687
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memwrite4 ax
	sourceline 688
	ptrstack 4
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memwrite4 ax
	sourceline 690
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TweenBase::Reverse$0
	call ax
	pop op
	sourceline 691
	li ax, 0
	subi sp, 8
	ret 

_TweenObject::Step$1: ; 1 args
	sourceline 698
	thisaddr 10767
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 699
	push op
	pop mar
	ptrassert 
	addi mar, 28
	memread4 ax
	mr bx, ax
	jmpi label000000029747
label000000010797: ; inside _TweenObject::Step$1, ; referenced by 80 spots
	jmpi label000000030867
label000000010799: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 702
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010885
	sourceline 703
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_X
	farcall ax
	pop op
	li mar, @var003612
	memwrite4 ax
	sourceline 704
	jmpi label000000010930
label000000010885: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 706
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
label000000010930: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 711
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000011016
	sourceline 712
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Y
	farcall ax
	pop op
	li mar, @var003616
	memwrite4 ax
	sourceline 713
	jmpi label000000011061
label000000011016: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 715
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003616
	memwrite4 ax
label000000011061: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 720
	push op
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, GUI::SetPosition^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 721
	li ax, 0
	jmpi label000000010797
label000000011127: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 723
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000011213
	sourceline 724
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Width
	farcall ax
	pop op
	li mar, @var003612
	memwrite4 ax
	sourceline 725
	jmpi label000000011273
label000000011213: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 727
	li ax, 1
	push ax
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003612
	memwrite4 ax
label000000011273: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 732
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000011359
	sourceline 733
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Height
	farcall ax
	pop op
	li mar, @var003616
	memwrite4 ax
	sourceline 734
	jmpi label000000011419
label000000011359: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 736
	li ax, 1
	push ax
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
label000000011419: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 741
	push op
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, GUI::SetSize^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 742
	li ax, 0
	jmpi label000000010797
label000000011485: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 745
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 746
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000011601
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000011601: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000011654
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Transparency
	farcall ax
	pop op
	push ax
	li ax, 100
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000011654: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000011703
	sourceline 747
	li ax, 1
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000011703: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 749
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Transparency
	farcall ax
	farsubsp 1
	pop op
	sourceline 751
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000011890
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000011890: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000011943
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Transparency
	farcall ax
	pop op
	push ax
	li ax, 100
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000011943: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000011992
	sourceline 752
	li ax, 0
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000011992: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 754
	ptrstack 4
	ptrzero 
	subi sp, 4
	li ax, 0
	jmpi label000000010797
	sourceline 755
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000012013: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 757
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_ZOrder
	farcall ax
	farsubsp 1
	pop op
	sourceline 758
	li ax, 0
	jmpi label000000010797
label000000012112: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 761
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_BackgroundColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 766
	li ax, 0
	jmpi label000000010797
label000000012348: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 768
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_BackgroundColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 773
	li ax, 0
	jmpi label000000010797
label000000012584: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 775
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_BackgroundColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 780
	li ax, 0
	jmpi label000000010797
label000000012820: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 782
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_BorderColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 787
	li ax, 0
	jmpi label000000010797
label000000013056: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 789
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_BorderColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 794
	li ax, 0
	jmpi label000000010797
label000000013292: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 796
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 18
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, gui
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_BorderColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 801
	li ax, 0
	jmpi label000000010797
label000000013528: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 805
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000013654
	sourceline 806
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_X
	farcall ax
	farsubsp 1
	pop op
label000000013654: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 808
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000013780
	sourceline 809
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Y
	farcall ax
	farsubsp 1
	pop op
label000000013780: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 811
	li ax, 0
	jmpi label000000010797
label000000013787: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 813
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 814
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000013903
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Visible
	farcall ax
	pop op
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000013903: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000013956
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Transparency
	farcall ax
	pop op
	push ax
	li ax, 100
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000013956: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000014005
	sourceline 815
	li ax, 1
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000014005: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 817
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Transparency
	farcall ax
	farsubsp 1
	pop op
	sourceline 818
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000014192
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Visible
	farcall ax
	pop op
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000014192: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000014245
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Transparency
	farcall ax
	pop op
	push ax
	li ax, 100
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000014245: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	jzi label000000014294
	sourceline 819
	li ax, 0
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000014294: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 821
	ptrstack 4
	ptrzero 
	subi sp, 4
	li ax, 0
	jmpi label000000010797
	sourceline 822
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000014315: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 825
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	li mar, @var003628
	push mar
	pop mar
	ptrset ax
	sourceline 826
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 827
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 828
	push op
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Object::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 829
	li ax, 0
	jmpi label000000010797
label000000014610: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 831
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	li mar, @var003628
	push mar
	pop mar
	ptrset ax
	sourceline 832
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 833
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 834
	push op
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Object::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 835
	li ax, 0
	jmpi label000000010797
label000000014905: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 837
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	li mar, @var003628
	push mar
	pop mar
	ptrset ax
	sourceline 838
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 839
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 840
	push op
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Object::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 841
	li ax, 0
	jmpi label000000010797
label000000015200: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 843
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	li mar, @var003628
	push mar
	pop mar
	ptrset ax
	sourceline 844
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 845
	push op
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Object::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 846
	li ax, 0
	jmpi label000000010797
label000000015468: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 848
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	li mar, @var003628
	push mar
	pop mar
	ptrset ax
	sourceline 849
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 850
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 851
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003628
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Object::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 852
	li ax, 0
	jmpi label000000010797
label000000015763: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 856
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000015889
	sourceline 857
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_x
	farcall ax
	farsubsp 1
	pop op
label000000015889: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 859
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000016015
	sourceline 860
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_y
	farcall ax
	farsubsp 1
	pop op
label000000016015: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 862
	li ax, 0
	jmpi label000000010797
label000000016022: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 864
	li ax, 200
	push ax
	li ax, 5
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_Scaling
	farcall ax
	farsubsp 1
	pop op
	sourceline 865
	li ax, 0
	jmpi label000000010797
label000000016141: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 867
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_Transparency
	farcall ax
	farsubsp 1
	pop op
	sourceline 868
	li ax, 0
	jmpi label000000010797
label000000016260: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 870
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_AnimationSpeed
	farcall ax
	farsubsp 1
	pop op
	sourceline 871
	li ax, 0
	jmpi label000000010797
label000000016359: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 873
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_z
	farcall ax
	farsubsp 1
	pop op
	sourceline 874
	li ax, 0
	jmpi label000000010797
label000000016458: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 877
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	li mar, @var003624
	push mar
	pop mar
	ptrset ax
	sourceline 878
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 879
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 880
	push op
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Character::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 881
	li ax, 0
	jmpi label000000010797
label000000016753: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 883
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	li mar, @var003624
	push mar
	pop mar
	ptrset ax
	sourceline 884
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 885
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 886
	push op
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Character::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 887
	li ax, 0
	jmpi label000000010797
label000000017048: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 889
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	li mar, @var003624
	push mar
	pop mar
	ptrset ax
	sourceline 890
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 891
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 892
	push op
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Character::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 893
	li ax, 0
	jmpi label000000010797
label000000017343: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 895
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	li mar, @var003624
	push mar
	pop mar
	ptrset ax
	sourceline 896
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 897
	push op
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Character::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 898
	li ax, 0
	jmpi label000000010797
label000000017611: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 900
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	li mar, @var003624
	push mar
	pop mar
	ptrset ax
	sourceline 901
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 902
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	li mar, @var003616
	memwrite4 ax
	sourceline 903
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003624
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Character::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 904
	li ax, 0
	jmpi label000000010797
label000000017906: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 908
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 909
	li mar, @var003612
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 16
	muli ax, 8
	mr cx, ax
	pop ax
	mr bx, ax
	li mar, region
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Region::set_LightLevel
	farcall ax
	farsubsp 1
	pop op
	sourceline 910
	li ax, 0
	jmpi label000000010797
label000000018037: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 912
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 16
	muli ax, 8
	mr cx, ax
	li mar, region
	add mar, cx
	mr ax, mar
	li mar, @var003620
	push mar
	pop mar
	ptrset ax
	sourceline 913
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 914
	push op
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintSaturation
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Region::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 915
	li ax, 0
	jmpi label000000010797
label000000018305: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 917
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 16
	muli ax, 8
	mr cx, ax
	li mar, region
	add mar, cx
	mr ax, mar
	li mar, @var003620
	push mar
	pop mar
	ptrset ax
	sourceline 918
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 919
	push op
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintSaturation
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Region::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 920
	li ax, 0
	jmpi label000000010797
label000000018573: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 922
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 16
	muli ax, 8
	mr cx, ax
	li mar, region
	add mar, cx
	mr ax, mar
	li mar, @var003620
	push mar
	pop mar
	ptrset ax
	sourceline 923
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 924
	push op
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintSaturation
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Region::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 925
	li ax, 0
	jmpi label000000010797
label000000018841: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 927
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 16
	muli ax, 8
	mr cx, ax
	li mar, region
	add mar, cx
	mr ax, mar
	li mar, @var003620
	push mar
	pop mar
	ptrset ax
	sourceline 928
	li ax, 100
	push ax
	li ax, 1
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 929
	push op
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintLuminance
	farcall ax
	pop op
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Region::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 930
	li ax, 0
	jmpi label000000010797
label000000019109: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 932
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 16
	muli ax, 8
	mr cx, ax
	li mar, region
	add mar, cx
	mr ax, mar
	li mar, @var003620
	push mar
	pop mar
	ptrset ax
	sourceline 933
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 934
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintSaturation
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintBlue
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintGreen
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintRed
	farcall ax
	pop op
	farpush ax
	li mar, @var003620
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 5
	li ax, Region::Tint^5
	farcall ax
	farsubsp 5
	pop op
	sourceline 935
	li ax, 0
	jmpi label000000010797
label000000019377: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 938
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000019452
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	li mar, @var003612
	memwrite4 ax
	jmpi label000000019495
label000000019452: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
label000000019495: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 939
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000019570
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	li mar, @var003616
	memwrite4 ax
	jmpi label000000019613
label000000019570: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003616
	memwrite4 ax
label000000019613: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 940
	push op
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, GUIControl::SetPosition^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 941
	li ax, 0
	jmpi label000000010797
label000000019665: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 943
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000019740
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	li mar, @var003612
	memwrite4 ax
	jmpi label000000019783
label000000019740: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
label000000019783: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 944
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000019858
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	li mar, @var003616
	memwrite4 ax
	jmpi label000000019901
label000000019858: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003616
	memwrite4 ax
label000000019901: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 945
	push op
	li mar, @var003616
	memread4 ax
	farpush ax
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, GUIControl::SetSize^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 946
	li ax, 0
	jmpi label000000010797
label000000019953: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 949
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 954
	li ax, 0
	jmpi label000000010797
label000000020241: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 956
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 961
	li ax, 0
	jmpi label000000010797
label000000020529: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 963
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsLabel
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 968
	li ax, 0
	jmpi label000000010797
label000000020817: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 971
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Button::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 975
	li ax, 0
	jmpi label000000010797
label000000021105: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 977
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Button::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 982
	li ax, 0
	jmpi label000000010797
label000000021393: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 984
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsButton
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Button::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 989
	li ax, 0
	jmpi label000000010797
label000000021681: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 992
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, TextBox::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 997
	li ax, 0
	jmpi label000000010797
label000000021969: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 999
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, TextBox::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1004
	li ax, 0
	jmpi label000000010797
label000000022257: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1006
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsTextBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, TextBox::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1011
	li ax, 0
	jmpi label000000010797
label000000022545: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1014
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_ItemCount
	farcall ax
	pop op
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	li ax, -1
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedIndex
	farcall ax
	farsubsp 1
	pop op
	sourceline 1015
	li ax, 0
	jmpi label000000010797
label000000022754: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1017
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_ItemCount
	farcall ax
	pop op
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_TopItem
	farcall ax
	farsubsp 1
	pop op
	sourceline 1018
	li ax, 0
	jmpi label000000010797
label000000022963: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1022
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedBackColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1027
	li ax, 0
	jmpi label000000010797
label000000023251: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1029
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedBackColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1034
	li ax, 0
	jmpi label000000010797
label000000023539: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1036
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedBackColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1041
	li ax, 0
	jmpi label000000010797
label000000023827: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1043
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedTextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1048
	li ax, 0
	jmpi label000000010797
label000000024115: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1050
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedTextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1055
	li ax, 0
	jmpi label000000010797
label000000024403: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1057
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedTextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1062
	li ax, 0
	jmpi label000000010797
label000000024691: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1064
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1069
	li ax, 0
	jmpi label000000010797
label000000024979: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1071
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	farpush ax
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1076
	li ax, 0
	jmpi label000000010797
label000000025267: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1078
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	farpush ax
	setfuncargs 3
	li ax, Game::GetColorFromRGB^3
	farcall ax
	farsubsp 3
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsListBox
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_TextColor
	farcall ax
	farsubsp 1
	pop op
	sourceline 1083
	li ax, 0
	jmpi label000000010797
label000000025555: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1087
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsSlider
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Max
	farcall ax
	pop op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsSlider
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Min
	farcall ax
	pop op
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsSlider
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 1088
	li ax, 0
	jmpi label000000010797
label000000025802: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1090
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsSlider
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_HandleOffset
	farcall ax
	farsubsp 1
	pop op
	sourceline 1091
	li ax, 0
	jmpi label000000010797
label000000025927: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1094
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsInvWindow
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, InvWindow::get_ItemCount
	farcall ax
	pop op
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	push ax
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_AsInvWindow
	farcall ax
	pop op
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, InvWindow::set_TopItem
	farcall ax
	farsubsp 1
	pop op
	sourceline 1095
	li ax, 0
	jmpi label000000010797
label000000026136: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1099
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000026278
	sourceline 1100
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Game::geti_Cameras
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Camera::set_X
	farcall ax
	farsubsp 1
	pop op
label000000026278: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1102
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000026420
	sourceline 1103
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Game::geti_Cameras
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Camera::set_Y
	farcall ax
	farsubsp 1
	pop op
label000000026420: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1105
	li ax, 0
	jmpi label000000010797
label000000026427: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1107
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000026569
	sourceline 1108
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Game::geti_Cameras
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Camera::set_Width
	farcall ax
	farsubsp 1
	pop op
label000000026569: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1110
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000026711
	sourceline 1111
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Game::geti_Cameras
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Camera::set_Height
	farcall ax
	farsubsp 1
	pop op
label000000026711: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1113
	li ax, 0
	jmpi label000000010797
label000000026718: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1117
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000026860
	sourceline 1118
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Screen::geti_Viewports
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Viewport::set_X
	farcall ax
	farsubsp 1
	pop op
label000000026860: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1120
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000027002
	sourceline 1121
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Screen::geti_Viewports
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Viewport::set_Y
	farcall ax
	farsubsp 1
	pop op
label000000027002: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1123
	li ax, 0
	jmpi label000000010797
label000000027009: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1125
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000027151
	sourceline 1126
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Screen::geti_Viewports
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Viewport::set_Width
	farcall ax
	farsubsp 1
	pop op
label000000027151: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1128
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000027293
	sourceline 1129
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	pop ax
	mr bx, ax
	push ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Screen::geti_Viewports
	farcall ax
	farsubsp 1
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Viewport::set_Height
	farcall ax
	farsubsp 1
	pop op
label000000027293: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1131
	li ax, 0
	jmpi label000000010797
label000000027300: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1142
	li ax, 200
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	mr bx, ax
	li ax, 0
	farpush bx
	setfuncargs 1
	li ax, System::set_Gamma
	farcall ax
	farsubsp 1
	sourceline 1143
	li ax, 0
	jmpi label000000010797
label000000027384: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1145
	li ax, 1
	farpush ax
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	farpush ax
	li ax, 2
	push ax
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	farpush ax
	setfuncargs 3
	li ax, ShakeScreenBackground
	farcall ax
	farsubsp 3
	sourceline 1146
	li ax, 0
	jmpi label000000010797
label000000027502: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1148
	li ax, 200
	push ax
	li ax, 5
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	li ax, 200
	push ax
	li ax, 5
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, SetAreaScaling
	farcall ax
	farsubsp 3
	sourceline 1149
	li ax, 0
	jmpi label000000010797
label000000027652: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1152
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	setfuncargs 1
	li ax, SetSpeechVolume
	farcall ax
	farsubsp 1
	sourceline 1153
	li ax, 0
	jmpi label000000010797
label000000027730: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1155
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1156
	li mar, @var003612
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, SetAmbientLightLevel
	farcall ax
	farsubsp 1
	sourceline 1157
	li ax, 0
	jmpi label000000010797
label000000027820: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1159
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1160
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetLightLevel^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 1161
	li ax, 0
	jmpi label000000010797
label000000027944: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1163
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1164
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 52
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 8
	muli ax, 780
	mr cx, ax
	li mar, character
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::SetProperty^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 1165
	li ax, 0
	jmpi label000000010797
label000000028066: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1167
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1168
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 52
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 50
	muli ax, 8
	mr cx, ax
	li mar, hotspot
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Hotspot::SetProperty^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 1169
	li ax, 0
	jmpi label000000010797
label000000028188: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1171
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1172
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 52
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 13
	muli ax, 8
	mr cx, ax
	li mar, inventory
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, InventoryItem::SetProperty^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 1173
	li ax, 0
	jmpi label000000010797
label000000028310: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1175
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1176
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Object::SetLightLevel^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 1177
	li ax, 0
	jmpi label000000010797
label000000028434: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1179
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1180
	push op
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 52
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Object::SetProperty^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 1181
	li ax, 0
	jmpi label000000010797
label000000028556: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1183
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	li mar, @var003612
	memwrite4 ax
	sourceline 1184
	li mar, @var003612
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 52
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	setfuncargs 2
	li ax, Room::SetProperty^2
	farcall ax
	farsubsp 2
	sourceline 1185
	li ax, 0
	jmpi label000000010797
label000000028644: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1207
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	mr bx, ax
	li ax, 0
	farpush bx
	setfuncargs 1
	li ax, System::set_Volume
	farcall ax
	farsubsp 1
	sourceline 1208
	li ax, 0
	jmpi label000000010797
label000000028728: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1210
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, System::geti_AudioChannels
	farcall ax
	farsubsp 1
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 1211
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, _ShouldLeaveAudioAlone$1
	call ax
	subi sp, 4
	jzi label000000028797
	li ax, 0
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000028797: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1212
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_LengthMs
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, AudioChannel::Seek^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 1213
	ptrstack 4
	ptrzero 
	subi sp, 4
	li ax, 0
	jmpi label000000010797
	sourceline 1214
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000028928: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1216
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, System::geti_AudioChannels
	farcall ax
	farsubsp 1
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 1217
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, _ShouldLeaveAudioAlone$1
	call ax
	subi sp, 4
	jzi label000000028997
	li ax, 0
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000028997: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1218
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, AudioChannel::set_Volume
	farcall ax
	farsubsp 1
	pop op
	sourceline 1219
	ptrstack 4
	ptrzero 
	subi sp, 4
	li ax, 0
	jmpi label000000010797
	sourceline 1220
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000029115: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1222
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, System::geti_AudioChannels
	farcall ax
	farsubsp 1
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 1223
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, _ShouldLeaveAudioAlone$1
	call ax
	subi sp, 4
	jzi label000000029184
	li ax, 0
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000029184: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1224
	push op
	li ax, 0
	setfuncargs 0
	li ax, Room::get_Height
	farcall ax
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	li ax, 0
	setfuncargs 0
	li ax, Room::get_Width
	farcall ax
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, AudioChannel::SetRoomLocation^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 1228
	ptrstack 4
	ptrzero 
	subi sp, 4
	li ax, 0
	jmpi label000000010797
	sourceline 1229
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000029364: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1231
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, System::geti_AudioChannels
	farcall ax
	farsubsp 1
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 1232
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, _ShouldLeaveAudioAlone$1
	call ax
	subi sp, 4
	jzi label000000029433
	li ax, 0
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000029433: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1233
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 24
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, AudioChannel::set_Panning
	farcall ax
	farsubsp 1
	pop op
	sourceline 1234
	ptrstack 4
	ptrzero 
	subi sp, 4
	li ax, 0
	jmpi label000000010797
	sourceline 1235
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000029556: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1237
	push op
	pop mar
	ptrassert 
	addi mar, 40
	memread4 ax
	mr dx, ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, System::geti_AudioChannels
	farcall ax
	farsubsp 1
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 1238
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, _ShouldLeaveAudioAlone$1
	call ax
	subi sp, 4
	jzi label000000029625
	li ax, 0
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000029625: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 1239
	li ax, 0
	push ax
	ptrstack 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 4
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, AudioChannel::set_Speed
	farcall ax
	farsubsp 1
	pop op
	sourceline 1240
	ptrstack 4
	ptrzero 
	subi sp, 4
	li ax, 0
	jmpi label000000010797
	sourceline 1241
	ptrstack 4
	ptrzero 
	subi sp, 4
	sourceline 1243
	jmpi label000000030867
label000000029747: ; inside _TweenObject::Step$1, ; referenced by 1 spots
	sourceline 701
	push bx
	li ax, 1
	pop bx
	cmpne ax, bx
	jzi label000000010799
	sourceline 722
	push bx
	li ax, 3
	pop bx
	cmpne ax, bx
	jzi label000000011127
	sourceline 743
	push bx
	li ax, 2
	pop bx
	cmpne ax, bx
	jzi label000000011485
	sourceline 756
	push bx
	li ax, 4
	pop bx
	cmpne ax, bx
	jzi label000000012013
	sourceline 760
	push bx
	li ax, 5
	pop bx
	cmpne ax, bx
	jzi label000000012112
	sourceline 767
	push bx
	li ax, 6
	pop bx
	cmpne ax, bx
	jzi label000000012348
	sourceline 774
	push bx
	li ax, 7
	pop bx
	cmpne ax, bx
	jzi label000000012584
	sourceline 781
	push bx
	li ax, 8
	pop bx
	cmpne ax, bx
	jzi label000000012820
	sourceline 788
	push bx
	li ax, 9
	pop bx
	cmpne ax, bx
	jzi label000000013056
	sourceline 795
	push bx
	li ax, 10
	pop bx
	cmpne ax, bx
	jzi label000000013292
	sourceline 804
	push bx
	li ax, 11
	pop bx
	cmpne ax, bx
	jzi label000000013528
	sourceline 812
	push bx
	li ax, 12
	pop bx
	cmpne ax, bx
	jzi label000000013787
	sourceline 824
	push bx
	li ax, 76
	pop bx
	cmpne ax, bx
	jzi label000000014315
	sourceline 830
	push bx
	li ax, 77
	pop bx
	cmpne ax, bx
	jzi label000000014610
	sourceline 836
	push bx
	li ax, 78
	pop bx
	cmpne ax, bx
	jzi label000000014905
	sourceline 842
	push bx
	li ax, 79
	pop bx
	cmpne ax, bx
	jzi label000000015200
	sourceline 847
	push bx
	li ax, 80
	pop bx
	cmpne ax, bx
	jzi label000000015468
	sourceline 855
	push bx
	li ax, 13
	pop bx
	cmpne ax, bx
	jzi label000000015763
	sourceline 863
	push bx
	li ax, 14
	pop bx
	cmpne ax, bx
	jzi label000000016022
	sourceline 866
	push bx
	li ax, 15
	pop bx
	cmpne ax, bx
	jzi label000000016141
	sourceline 869
	push bx
	li ax, 16
	pop bx
	cmpne ax, bx
	jzi label000000016260
	sourceline 872
	push bx
	li ax, 17
	pop bx
	cmpne ax, bx
	jzi label000000016359
	sourceline 876
	push bx
	li ax, 71
	pop bx
	cmpne ax, bx
	jzi label000000016458
	sourceline 882
	push bx
	li ax, 72
	pop bx
	cmpne ax, bx
	jzi label000000016753
	sourceline 888
	push bx
	li ax, 73
	pop bx
	cmpne ax, bx
	jzi label000000017048
	sourceline 894
	push bx
	li ax, 74
	pop bx
	cmpne ax, bx
	jzi label000000017343
	sourceline 899
	push bx
	li ax, 75
	pop bx
	cmpne ax, bx
	jzi label000000017611
	sourceline 907
	push bx
	li ax, 18
	pop bx
	cmpne ax, bx
	jzi label000000017906
	sourceline 911
	push bx
	li ax, 19
	pop bx
	cmpne ax, bx
	jzi label000000018037
	sourceline 916
	push bx
	li ax, 20
	pop bx
	cmpne ax, bx
	jzi label000000018305
	sourceline 921
	push bx
	li ax, 21
	pop bx
	cmpne ax, bx
	jzi label000000018573
	sourceline 926
	push bx
	li ax, 22
	pop bx
	cmpne ax, bx
	jzi label000000018841
	sourceline 931
	push bx
	li ax, 63
	pop bx
	cmpne ax, bx
	jzi label000000019109
	sourceline 937
	push bx
	li ax, 26
	pop bx
	cmpne ax, bx
	jzi label000000019377
	sourceline 942
	push bx
	li ax, 27
	pop bx
	cmpne ax, bx
	jzi label000000019665
	sourceline 948
	push bx
	li ax, 23
	pop bx
	cmpne ax, bx
	jzi label000000019953
	sourceline 955
	push bx
	li ax, 24
	pop bx
	cmpne ax, bx
	jzi label000000020241
	sourceline 962
	push bx
	li ax, 25
	pop bx
	cmpne ax, bx
	jzi label000000020529
	sourceline 970
	push bx
	li ax, 28
	pop bx
	cmpne ax, bx
	jzi label000000020817
	sourceline 976
	push bx
	li ax, 29
	pop bx
	cmpne ax, bx
	jzi label000000021105
	sourceline 983
	push bx
	li ax, 30
	pop bx
	cmpne ax, bx
	jzi label000000021393
	sourceline 991
	push bx
	li ax, 52
	pop bx
	cmpne ax, bx
	jzi label000000021681
	sourceline 998
	push bx
	li ax, 53
	pop bx
	cmpne ax, bx
	jzi label000000021969
	sourceline 1005
	push bx
	li ax, 54
	pop bx
	cmpne ax, bx
	jzi label000000022257
	sourceline 1013
	push bx
	li ax, 32
	pop bx
	cmpne ax, bx
	jzi label000000022545
	sourceline 1016
	push bx
	li ax, 33
	pop bx
	cmpne ax, bx
	jzi label000000022754
	sourceline 1021
	push bx
	li ax, 34
	pop bx
	cmpne ax, bx
	jzi label000000022963
	sourceline 1028
	push bx
	li ax, 35
	pop bx
	cmpne ax, bx
	jzi label000000023251
	sourceline 1035
	push bx
	li ax, 36
	pop bx
	cmpne ax, bx
	jzi label000000023539
	sourceline 1042
	push bx
	li ax, 37
	pop bx
	cmpne ax, bx
	jzi label000000023827
	sourceline 1049
	push bx
	li ax, 38
	pop bx
	cmpne ax, bx
	jzi label000000024115
	sourceline 1056
	push bx
	li ax, 39
	pop bx
	cmpne ax, bx
	jzi label000000024403
	sourceline 1063
	push bx
	li ax, 40
	pop bx
	cmpne ax, bx
	jzi label000000024691
	sourceline 1070
	push bx
	li ax, 41
	pop bx
	cmpne ax, bx
	jzi label000000024979
	sourceline 1077
	push bx
	li ax, 42
	pop bx
	cmpne ax, bx
	jzi label000000025267
	sourceline 1086
	push bx
	li ax, 31
	pop bx
	cmpne ax, bx
	jzi label000000025555
	sourceline 1089
	push bx
	li ax, 55
	pop bx
	cmpne ax, bx
	jzi label000000025802
	sourceline 1093
	push bx
	li ax, 43
	pop bx
	cmpne ax, bx
	jzi label000000025927
	sourceline 1098
	push bx
	li ax, 46
	pop bx
	cmpne ax, bx
	jzi label000000026136
	sourceline 1106
	push bx
	li ax, 47
	pop bx
	cmpne ax, bx
	jzi label000000026427
	sourceline 1116
	push bx
	li ax, 44
	pop bx
	cmpne ax, bx
	jzi label000000026718
	sourceline 1124
	push bx
	li ax, 45
	pop bx
	cmpne ax, bx
	jzi label000000027009
	sourceline 1141
	push bx
	li ax, 48
	pop bx
	cmpne ax, bx
	jzi label000000027300
	sourceline 1144
	push bx
	li ax, 49
	pop bx
	cmpne ax, bx
	jzi label000000027384
	sourceline 1147
	push bx
	li ax, 50
	pop bx
	cmpne ax, bx
	jzi label000000027502
	sourceline 1151
	push bx
	li ax, 51
	pop bx
	cmpne ax, bx
	jzi label000000027652
	sourceline 1154
	push bx
	li ax, 56
	pop bx
	cmpne ax, bx
	jzi label000000027730
	sourceline 1158
	push bx
	li ax, 57
	pop bx
	cmpne ax, bx
	jzi label000000027820
	sourceline 1162
	push bx
	li ax, 58
	pop bx
	cmpne ax, bx
	jzi label000000027944
	sourceline 1166
	push bx
	li ax, 59
	pop bx
	cmpne ax, bx
	jzi label000000028066
	sourceline 1170
	push bx
	li ax, 60
	pop bx
	cmpne ax, bx
	jzi label000000028188
	sourceline 1174
	push bx
	li ax, 61
	pop bx
	cmpne ax, bx
	jzi label000000028310
	sourceline 1178
	push bx
	li ax, 62
	pop bx
	cmpne ax, bx
	jzi label000000028434
	sourceline 1182
	push bx
	li ax, 64
	pop bx
	cmpne ax, bx
	jzi label000000028556
	sourceline 1206
	push bx
	li ax, 65
	pop bx
	cmpne ax, bx
	jzi label000000028644
	sourceline 1209
	push bx
	li ax, 69
	pop bx
	cmpne ax, bx
	jzi label000000028728
	sourceline 1215
	push bx
	li ax, 66
	pop bx
	cmpne ax, bx
	jzi label000000028928
	sourceline 1221
	push bx
	li ax, 67
	pop bx
	cmpne ax, bx
	jzi label000000029115
	sourceline 1230
	push bx
	li ax, 68
	pop bx
	cmpne ax, bx
	jzi label000000029364
	sourceline 1236
	push bx
	li ax, 70
	pop bx
	cmpne ax, bx
	jzi label000000029556
label000000030867: ; inside _TweenObject::Step$1, ; referenced by 2 spots
	sourceline 1244
	li ax, 0
	subi sp, 4
	ret 

_TweenObject::Update$0: ; 0 args
	sourceline 1248
	thisaddr 30876
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1249
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000030925
	sourceline 1250
	li ax, 0
	subi sp, 4
	ret 
label000000030925: ; inside _TweenObject::Update$0, ; referenced by 1 spots
	sourceline 1253
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, 0
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000030973
	sourceline 1255
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	faddi ax, 1
	memwrite4 ax
	sourceline 1256
	jmpi label000000031244
label000000030973: ; inside _TweenObject::Update$0, ; referenced by 1 spots
	sourceline 1259
	push op
	pop mar
	ptrassert 
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, TweenEasing::GetValue$3
	call ax
	subi sp, 12
	li mar, @var003632
	memwrite4 ax
	sourceline 1262
	push op
	li mar, @var003632
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Step$1
	call ax
	subi sp, 4
	pop op
	sourceline 1263
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	faddi ax, 1
	memwrite4 ax
	sourceline 1266
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	pop bx
	fgt bx, ax
	mr ax, bx
	jzi label000000031244
	sourceline 1267
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031153
	sourceline 1268
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TweenBase::Restart$0
	call ax
	pop op
	sourceline 1269
	jmpi label000000031244
label000000031153: ; inside _TweenObject::Update$0, ; referenced by 1 spots
	sourceline 1270
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memread4 ax
	push ax
	li ax, 7002
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031224
	sourceline 1271
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, _TweenObject::ReverseTweenObject$0
	call ax
	pop op
	sourceline 1272
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TweenBase::Restart$0
	call ax
	pop op
	sourceline 1273
	jmpi label000000031244
label000000031224: ; inside _TweenObject::Update$0, ; referenced by 1 spots
	sourceline 1275
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Release$0
	call ax
	pop op
label000000031244: ; inside _TweenObject::Update$0, ; referenced by 4 spots
	sourceline 1280
	li ax, 1
	subi sp, 4
	ret 
	sourceline 1281
	li ax, 0
	subi sp, 4
	ret 

_ShouldCleanUpTweenAtIndex$1: ; 1 args
	sourceline 1287
	thisaddr 31262
	sourceline 1288
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000012
	add mar, cx
	memread4 ax
	push ax
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000031678
	sourceline 1289
	li ax, 0
	jzi label000000031326
	sourceline 1290
	li ax, 1
	ret 
label000000031326: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	sourceline 1293
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000036
	add mar, cx
	memread4 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1294
	ptrstack 12
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000032
	add mar, cx
	memread4 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1296
	ptrstack 8
	memread4 ax
	push ax
	li ax, 7
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031418
	sourceline 1297
	li ax, 0
	subi sp, 8
	ret 
label000000031418: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	sourceline 1300
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000031466
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpne bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000031466: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	jzi label000000031640
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 6
	pop bx
	cmpne bx, ax
	mr ax, bx
	jnzi label000000031516
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 64
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031516: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	jnzi label000000031545
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 59
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031545: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	jnzi label000000031574
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 10
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031574: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	jnzi label000000031603
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 9
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031603: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	jnzi label000000031632
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 50
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031632: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	pop bx
	land bx, ax
	mr ax, bx
label000000031640: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	jzi label000000031669
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 8
	pop bx
	cmpne bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000031669: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	subi sp, 8
	ret 
	sourceline 1318
	subi sp, 8
label000000031678: ; inside _ShouldCleanUpTweenAtIndex$1, ; referenced by 1 spots
	sourceline 1319
	li ax, 0
	ret 
	sourceline 1320
	li ax, 0
	ret 

_CleanupTweens$0: ; 0 args
	sourceline 1322
	thisaddr 31690
	sourceline 1323
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000031707: ; inside _CleanupTweens$0, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000031835
	sourceline 1324
	ptrstack 4
	memread4 ax
	push ax
	li ax, _ShouldCleanUpTweenAtIndex$1
	call ax
	subi sp, 4
	jzi label000000031822
	sourceline 1325
	push op
	li ax, 0
	push ax
	ptrstack 12
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Step$1
	call ax
	subi sp, 4
	pop op
	sourceline 1326
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Release$0
	call ax
	pop op
label000000031822: ; inside _CleanupTweens$0, ; referenced by 1 spots
	sourceline 1328
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000031707
label000000031835: ; inside _CleanupTweens$0, ; referenced by 1 spots
	subi sp, 4
	sourceline 1329
	li ax, 0
	ret 

_StopTween$2: ; 2 args
	sourceline 1331
	thisaddr 31844
	sourceline 1332
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000012
	add mar, cx
	memread4 ax
	push ax
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000032062
	sourceline 1333
	ptrstack 12
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031963
	sourceline 1334
	push op
	li ax, 1065353216
	push ax
	ptrstack 16
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Step$1
	call ax
	subi sp, 4
	pop op
	sourceline 1335
	jmpi label000000032027
label000000031963: ; inside _StopTween$2, ; referenced by 1 spots
	sourceline 1336
	ptrstack 12
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032027
	sourceline 1337
	push op
	li ax, 0
	push ax
	ptrstack 16
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Step$1
	call ax
	subi sp, 4
	pop op
label000000032027: ; inside _StopTween$2, ; referenced by 2 spots
	sourceline 1340
	push op
	ptrstack 12
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Release$0
	call ax
	pop op
label000000032062: ; inside _StopTween$2, ; referenced by 1 spots
	sourceline 1342
	li ax, 0
	ret 

_StopTweens$3: ; 3 args
	sourceline 1344
	thisaddr 32068
	sourceline 1345
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000032085: ; inside _StopTweens$3, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000032225
	sourceline 1346
	ptrstack 4
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000036
	add mar, cx
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032188
	push ax
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000044
	add mar, cx
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000032188: ; inside _StopTweens$3, ; referenced by 1 spots
	jzi label000000032212
	sourceline 1347
	ptrstack 20
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, _StopTween$2
	call ax
	subi sp, 8
label000000032212: ; inside _StopTweens$3, ; referenced by 1 spots
	sourceline 1349
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000032085
label000000032225: ; inside _StopTweens$3, ; referenced by 1 spots
	subi sp, 4
	sourceline 1350
	li ax, 0
	ret 

_StopTweensOfType$2: ; 2 args
	sourceline 1352
	thisaddr 32234
	sourceline 1353
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000032251: ; inside _StopTweensOfType$2, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000032344
	sourceline 1354
	ptrstack 4
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000032
	add mar, cx
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032331
	sourceline 1355
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, _StopTween$2
	call ax
	subi sp, 8
label000000032331: ; inside _StopTweensOfType$2, ; referenced by 1 spots
	sourceline 1357
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000032251
label000000032344: ; inside _StopTweensOfType$2, ; referenced by 1 spots
	subi sp, 4
	sourceline 1358
	li ax, 0
	ret 

_StopTweensOfTypeWithReference$3: ; 3 args
	sourceline 1360
	thisaddr 32353
	sourceline 1361
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000032370: ; inside _StopTweensOfTypeWithReference$3, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000032510
	sourceline 1362
	ptrstack 4
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000032
	add mar, cx
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032473
	push ax
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000044
	add mar, cx
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000032473: ; inside _StopTweensOfTypeWithReference$3, ; referenced by 1 spots
	jzi label000000032497
	sourceline 1363
	ptrstack 20
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, _StopTween$2
	call ax
	subi sp, 8
label000000032497: ; inside _StopTweensOfTypeWithReference$3, ; referenced by 1 spots
	sourceline 1365
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000032370
label000000032510: ; inside _StopTweensOfTypeWithReference$3, ; referenced by 1 spots
	subi sp, 4
	sourceline 1366
	li ax, 0
	ret 

_StopTweensOfTypeWithStringReference$4: ; 4 args
	sourceline 1368
	thisaddr 32519
	ptrstack 16
	memread4 ax
	ptrinit ax
	sourceline 1369
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000032542: ; inside _StopTweensOfTypeWithStringReference$4, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000032737
	sourceline 1370
	ptrstack 4
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000032
	add mar, cx
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032645
	push ax
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000044
	add mar, cx
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000032645: ; inside _StopTweensOfTypeWithStringReference$4, ; referenced by 1 spots
	jzi label000000032700
	push ax
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000056
	push mar
	pop mar
	add mar, cx
	ptrget ax
	push ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	pop bx
	streq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000032700: ; inside _StopTweensOfTypeWithStringReference$4, ; referenced by 1 spots
	jzi label000000032724
	sourceline 1371
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, _StopTween$2
	call ax
	subi sp, 8
label000000032724: ; inside _StopTweensOfTypeWithStringReference$4, ; referenced by 1 spots
	sourceline 1373
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000032542
label000000032737: ; inside _StopTweensOfTypeWithStringReference$4, ; referenced by 1 spots
	subi sp, 4
	sourceline 1374
	li ax, 0
	ptrstack 16
	ptrzerond 
	ret 

_StopTweensForGUIControl$2: ; 2 args
	sourceline 1376
	thisaddr 32749
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 1377
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000032772: ; inside _StopTweensForGUIControl$2, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000032873
	sourceline 1378
	ptrstack 4
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000040
	push mar
	pop mar
	add mar, cx
	ptrget ax
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032860
	sourceline 1379
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, _StopTween$2
	call ax
	subi sp, 8
label000000032860: ; inside _StopTweensForGUIControl$2, ; referenced by 1 spots
	sourceline 1381
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000032772
label000000032873: ; inside _StopTweensForGUIControl$2, ; referenced by 1 spots
	subi sp, 4
	sourceline 1382
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

_StopTweensForGUIControlOfType$3: ; 3 args
	sourceline 1384
	thisaddr 32885
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 1385
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000032908: ; inside _StopTweensForGUIControlOfType$3, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000033056
	sourceline 1386
	ptrstack 4
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000040
	push mar
	pop mar
	add mar, cx
	ptrget ax
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033019
	push ax
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000032
	add mar, cx
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000033019: ; inside _StopTweensForGUIControlOfType$3, ; referenced by 1 spots
	jzi label000000033043
	sourceline 1387
	ptrstack 20
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, _StopTween$2
	call ax
	subi sp, 8
label000000033043: ; inside _StopTweensForGUIControlOfType$3, ; referenced by 1 spots
	sourceline 1389
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000032908
label000000033056: ; inside _StopTweensForGUIControlOfType$3, ; referenced by 1 spots
	subi sp, 4
	sourceline 1390
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

game_start$0: ; 0 args
	sourceline 1396
	thisaddr 33068
	sourceline 1397
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000033085: ; inside game_start$0, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000033152
	sourceline 1398
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Release$0
	call ax
	pop op
	sourceline 1399
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000033085
label000000033152: ; inside game_start$0, ; referenced by 1 spots
	subi sp, 4
	sourceline 1400
	li ax, 0
	ret 

repeatedly_execute_always$0: ; 0 args
	sourceline 1404
	thisaddr 33161
	sourceline 1406
	li ax, 0
	li mar, @var003636
	memwrite4 ax
	sourceline 1407
	li ax, 0
	li mar, @var003588
	memwrite4 ax
label000000033185: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	sourceline 1409
	li mar, @var003636
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000033314
	sourceline 1410
	push op
	li mar, @var003636
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::Update$0
	call ax
	pop op
	jzi label000000033300
	sourceline 1411
	push op
	li mar, @var003636
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, TweenBase::IsPlaying$0
	call ax
	pop op
	jzi label000000033300
	sourceline 1412
	li mar, @var003636
	memread4 ax
	push ax
	li ax, _CheckIfIsLongestTween$1
	call ax
	subi sp, 4
label000000033300: ; inside repeatedly_execute_always$0, ; referenced by 2 spots
	sourceline 1415
	li mar, @var003636
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000033185
label000000033314: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	sourceline 1416
	li ax, 0
	ret 

on_event$2: ; 2 args
	sourceline 1418
	thisaddr 33320
	sourceline 1419
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033352
	sourceline 1421
	li ax, _CleanupTweens$0
	call ax
label000000033352: ; inside on_event$2, ; referenced by 1 spots
	sourceline 1423
	li ax, 0
	ret 

Tween::IncreaseGameSpeed$0: ; 0 args
	sourceline 1429
	thisaddr 33358
	sourceline 1430
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	push ax
	li ax, 60
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000033416
	sourceline 1431
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	li mar, @var003596
	memwrite4 ax
	sourceline 1432
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, SetGameSpeed
	farcall ax
	farsubsp 1
label000000033416: ; inside Tween::IncreaseGameSpeed$0, ; referenced by 1 spots
	sourceline 1434
	li ax, 0
	ret 

Tween::RestoreGameSpeed$0: ; 0 args
	sourceline 1436
	thisaddr 33422
	sourceline 1437
	li mar, @var003596
	memread4 ax
	push ax
	li ax, -1
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000033476
	sourceline 1438
	li mar, @var003596
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, SetGameSpeed
	farcall ax
	farsubsp 1
	sourceline 1439
	li ax, -1
	li mar, @var003596
	memwrite4 ax
label000000033476: ; inside Tween::RestoreGameSpeed$0, ; referenced by 1 spots
	sourceline 1441
	li ax, 0
	ret 

Tween::IncreaseGameSpeedOnBlock$1: ; 1 args
	sourceline 1443
	thisaddr 33482
	sourceline 1444
	ptrstack 8
	memread4 ax
	li mar, @var003592
	memwrite4 ax
	sourceline 1445
	li ax, 0
	ret 

Tween::StopAll$1: ; 1 args
	sourceline 1447
	thisaddr 33503
	sourceline 1448
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000033520: ; inside Tween::StopAll$1, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000033574
	sourceline 1449
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, _StopTween$2
	call ax
	subi sp, 8
	sourceline 1450
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000033520
label000000033574: ; inside Tween::StopAll$1, ; referenced by 1 spots
	subi sp, 4
	sourceline 1451
	li ax, 0
	ret 

Tween::WaitForAllToFinish$0: ; 0 args
	sourceline 1453
	thisaddr 33583
	sourceline 1454
	li mar, @var003588
	memread4 ax
	push ax
	li ax, 0
	pop bx
	fgt bx, ax
	mr ax, bx
	jzi label000000033643
	sourceline 1455
	li ax, 2
	farpush ax
	li mar, @var003588
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
label000000033643: ; inside Tween::WaitForAllToFinish$0, ; referenced by 1 spots
	sourceline 1457
	li ax, 0
	ret 

Tween::Update$0: ; 0 args
	sourceline 1459
	thisaddr 33649
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1460
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	fgt bx, ax
	mr ax, bx
	jzi label000000034125
	sourceline 1461
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, 0
	pop bx
	flt bx, ax
	mr ax, bx
	jzi label000000033737
	sourceline 1463
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	faddi ax, 1
	memwrite4 ax
	sourceline 1464
	jmpi label000000034116
label000000033737: ; inside Tween::Update$0, ; referenced by 1 spots
	sourceline 1467
	push op
	pop mar
	ptrassert 
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, TweenEasing::GetValue$3
	call ax
	subi sp, 12
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1474
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033864
	sourceline 1475
	li ax, 0
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push op
	pop mar
	ptrassert 
	addi mar, 28
	memwrite4 ax
	sourceline 1476
	jmpi label000000033914
label000000033864: ; inside Tween::Update$0, ; referenced by 1 spots
	sourceline 1478
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	push ax
	li ax, TweenMaths::Lerp$3
	call ax
	subi sp, 12
	push op
	pop mar
	ptrassert 
	addi mar, 28
	memwrite4 ax
label000000033914: ; inside Tween::Update$0, ; referenced by 1 spots
	sourceline 1481
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	faddi ax, 1
	memwrite4 ax
	sourceline 1484
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	pop bx
	fgt bx, ax
	mr ax, bx
	jzi label000000034111
	sourceline 1485
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034016
	sourceline 1486
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TweenBase::Restart$0
	call ax
	pop op
	sourceline 1487
	jmpi label000000034111
label000000034016: ; inside Tween::Update$0, ; referenced by 1 spots
	sourceline 1488
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memread4 ax
	push ax
	li ax, 7002
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034087
	sourceline 1489
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TweenBase::Reverse$0
	call ax
	pop op
	sourceline 1490
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TweenBase::Restart$0
	call ax
	pop op
	sourceline 1491
	jmpi label000000034111
label000000034087: ; inside Tween::Update$0, ; referenced by 1 spots
	sourceline 1493
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memwrite4 ax
label000000034111: ; inside Tween::Update$0, ; referenced by 3 spots
	sourceline 1496
	subi sp, 4
label000000034116: ; inside Tween::Update$0, ; referenced by 1 spots
	sourceline 1497
	li ax, 1
	subi sp, 4
	ret 
label000000034125: ; inside Tween::Update$0, ; referenced by 1 spots
	sourceline 1500
	li ax, 0
	subi sp, 4
	ret 
	sourceline 1501
	li ax, 0
	subi sp, 4
	ret 

Tween::Stop$1: ; 1 args
	sourceline 1503
	thisaddr 34143
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1504
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000034338
	sourceline 1505
	ptrstack 12
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034255
	sourceline 1506
	li ax, 0
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push op
	pop mar
	ptrassert 
	addi mar, 28
	memwrite4 ax
	sourceline 1507
	jmpi label000000034314
label000000034255: ; inside Tween::Stop$1, ; referenced by 1 spots
	sourceline 1508
	ptrstack 12
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034314
	sourceline 1509
	li ax, 0
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, FloatToInt
	farcall ax
	farsubsp 2
	push op
	pop mar
	ptrassert 
	addi mar, 28
	memwrite4 ax
label000000034314: ; inside Tween::Stop$1, ; referenced by 2 spots
	sourceline 1512
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memwrite4 ax
label000000034338: ; inside Tween::Stop$1, ; referenced by 1 spots
	sourceline 1514
	li ax, 0
	subi sp, 4
	ret 

Tween::GetProgress$0: ; 0 args
	sourceline 1516
	thisaddr 34347
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1517
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, 0
	pop bx
	flte bx, ax
	mr ax, bx
	jnzi label000000034420
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000034420: ; inside Tween::GetProgress$0, ; referenced by 1 spots
	jzi label000000034429
	li ax, 0
	subi sp, 4
	ret 
label000000034429: ; inside Tween::GetProgress$0, ; referenced by 1 spots
	sourceline 1518
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TweenBase::IsPlaying$0
	call ax
	pop op
	jzi label000000034485
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	pop bx
	fdiv bx, ax
	mr ax, bx
	subi sp, 4
	ret 
label000000034485: ; inside Tween::GetProgress$0, ; referenced by 1 spots
	sourceline 1519
	li ax, 1065353216
	subi sp, 4
	ret 
	sourceline 1520
	li ax, 0
	subi sp, 4
	ret 

_GetAvailableIndexFromTweenObjectArray$0: ; 0 args
	sourceline 1526
	thisaddr 34503
	sourceline 1527
	li ax, -1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1528
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000034533: ; inside _GetAvailableIndexFromTweenObjectArray$0, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 64
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000034579
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, -1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000034579: ; inside _GetAvailableIndexFromTweenObjectArray$0, ; referenced by 1 spots
	jzi label000000034651
	sourceline 1529
	ptrstack 4
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000012
	add mar, cx
	memread4 ax
	push ax
	li ax, 1065353216
	li bx, 0
	fsub bx, ax
	mr ax, bx
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034638
	sourceline 1530
	ptrstack 4
	memread4 ax
	ptrstack 8
	memwrite4 ax
label000000034638: ; inside _GetAvailableIndexFromTweenObjectArray$0, ; referenced by 1 spots
	sourceline 1532
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000034533
label000000034651: ; inside _GetAvailableIndexFromTweenObjectArray$0, ; referenced by 1 spots
	subi sp, 4
	sourceline 1539
	ptrstack 4
	memread4 ax
	subi sp, 4
	ret 
	sourceline 1540
	li ax, 0
	subi sp, 4
	ret 

_StartTween$14: ; 14 args
	sourceline 1546
	thisaddr 34673
	ptrstack 40
	memread4 ax
	ptrinit ax
	ptrstack 44
	memread4 ax
	ptrinit ax
	sourceline 1548
	li ax, _GetAvailableIndexFromTweenObjectArray$0
	call ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1554
	li mar, @var003592
	memread4 ax
	jzi label000000034740
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, 920
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000034740: ; inside _StartTween$14, ; referenced by 1 spots
	jzi label000000034749
	sourceline 1555
	li ax, Tween::IncreaseGameSpeed$0
	call ax
label000000034749: ; inside _StartTween$14, ; referenced by 1 spots
	sourceline 1558
	ptrstack 64
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034857
	sourceline 1559
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, SpeedToSeconds$5
	call ax
	subi sp, 20
	push ax
	li ax, 1065353216
	push ax
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	farpush ax
	setfuncargs 1
	li ax, IntToFloat
	farcall ax
	farsubsp 1
	pop bx
	fdiv bx, ax
	mr ax, bx
	push ax
	li ax, TweenMaths::MaxFloat$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
label000000034857: ; inside _StartTween$14, ; referenced by 1 spots
	sourceline 1561
	push op
	li ax, 1
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, TweenBase::Init$7
	call ax
	subi sp, 28
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1562
	push op
	ptrstack 56
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 56
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 64
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000004
	add mar, cx
	mr ax, mar
	callobj ax
	li ax, _TweenObject::InitTweenObject$7
	call ax
	subi sp, 28
	pop op
	sourceline 1564
	ptrstack 8
	memread4 ax
	push ax
	li ax, _CheckIfIsLongestTween$1
	call ax
	subi sp, 4
	sourceline 1566
	ptrstack 8
	memread4 ax
	assertlte ax, 64
	muli ax, 56
	mr cx, ax
	li mar, @var000008
	add mar, cx
	memread4 ax
	push ax
	li ax, 919
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000035134
	sourceline 1567
	ptrstack 4
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 1568
	li mar, @var003592
	memread4 ax
	jzi label000000035119
	sourceline 1569
	li ax, Tween::RestoreGameSpeed$0
	call ax
label000000035119: ; inside _StartTween$14, ; referenced by 1 spots
	sourceline 1571
	li ax, 1
	ptrstack 48
	ptrzerond 
	ptrstack 52
	ptrzerond 
	subi sp, 8
	ret 
label000000035134: ; inside _StartTween$14, ; referenced by 1 spots
	sourceline 1574
	ptrstack 4
	memread4 ax
	ptrstack 48
	ptrzerond 
	ptrstack 52
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 1575
	li ax, 0
	ptrstack 48
	ptrzerond 
	ptrstack 52
	ptrzerond 
	subi sp, 8
	ret 

_StartGUITween$11: ; 11 args
	sourceline 1582
	thisaddr 35165
	ptrstack 32
	memread4 ax
	ptrinit ax
	sourceline 1583
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 1
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 32
	ptrzerond 
	ret 
	sourceline 1584
	li ax, 0
	ptrstack 32
	ptrzerond 
	ret 

_StartObjectTween$11: ; 11 args
	sourceline 1587
	thisaddr 35303
	ptrstack 32
	memread4 ax
	ptrinit ax
	sourceline 1588
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 2
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 32
	ptrzerond 
	ret 
	sourceline 1589
	li ax, 0
	ptrstack 32
	ptrzerond 
	ret 

_StartCharacterTween$11: ; 11 args
	sourceline 1592
	thisaddr 35441
	ptrstack 32
	memread4 ax
	ptrinit ax
	sourceline 1593
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 3
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 32
	ptrzerond 
	ret 
	sourceline 1594
	li ax, 0
	ptrstack 32
	ptrzerond 
	ret 

_StartRegionTween$11: ; 11 args
	sourceline 1597
	thisaddr 35579
	ptrstack 32
	memread4 ax
	ptrinit ax
	sourceline 1598
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 4
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 32
	ptrzerond 
	ret 
	sourceline 1599
	li ax, 0
	ptrstack 32
	ptrzerond 
	ret 

_StartGUIControlTween$11: ; 11 args
	sourceline 1602
	thisaddr 35717
	ptrstack 32
	memread4 ax
	ptrinit ax
	sourceline 1603
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	push ax
	li ax, 5
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 32
	ptrzerond 
	ret 
	sourceline 1604
	li ax, 0
	ptrstack 32
	ptrzerond 
	ret 

_StartMiscTween$11: ; 11 args
	sourceline 1607
	thisaddr 35835
	sourceline 1608
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 56
	memread4 ax
	push ax
	li ax, 6
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ret 
	sourceline 1609
	li ax, 0
	ret 

_StartPropertyTween$11: ; 11 args
	sourceline 1614
	thisaddr 35937
	ptrstack 16
	memread4 ax
	ptrinit ax
	sourceline 1615
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 32
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	push ax
	ptrstack 56
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 64
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 16
	ptrzerond 
	ret 
	sourceline 1616
	li ax, 0
	ptrstack 16
	ptrzerond 
	ret 

_GetScreenViewportIndex$1: ; 1 args
	sourceline 1622
	thisaddr 36055
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 1623
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000036078: ; inside _GetScreenViewportIndex$1, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 0
	setfuncargs 0
	li ax, Screen::get_ViewportCount
	farcall ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000036173
	sourceline 1624
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 8
	memread4 ax
	mr dx, ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Screen::geti_Viewports
	farcall ax
	farsubsp 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000036160
	sourceline 1625
	ptrstack 4
	memread4 ax
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
label000000036160: ; inside _GetScreenViewportIndex$1, ; referenced by 1 spots
	sourceline 1627
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000036078
label000000036173: ; inside _GetScreenViewportIndex$1, ; referenced by 1 spots
	subi sp, 4
	sourceline 1628
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

_StartScreenViewportTween$11: ; 11 args
	sourceline 1630
	thisaddr 36185
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 1631
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, _GetScreenViewportIndex$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1632
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 9
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 1633
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

Viewport::TweenX$6: ; 6 args
	sourceline 1635
	thisaddr 36333
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1636
	li ax, 0
	setfuncargs 0
	li ax, Screen::get_Width
	farcall ax
	push ax
	li ax, 1
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 1637
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_X
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Y
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 44
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartScreenViewportTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1638
	li ax, 0
	subi sp, 4
	ret 

Viewport::TweenY$6: ; 6 args
	sourceline 1639
	thisaddr 36522
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1640
	li ax, 0
	setfuncargs 0
	li ax, Screen::get_Height
	farcall ax
	push ax
	li ax, 1
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 1641
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_X
	farcall ax
	pop op
	push ax
	ptrstack 40
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_X
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 44
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartScreenViewportTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1642
	li ax, 0
	subi sp, 4
	ret 

Viewport::TweenWidth$6: ; 6 args
	sourceline 1643
	thisaddr 36711
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1644
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Width
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Height
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 45
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartScreenViewportTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1645
	li ax, 0
	subi sp, 4
	ret 

Viewport::TweenHeight$6: ; 6 args
	sourceline 1646
	thisaddr 36863
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1647
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 40
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Viewport::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 45
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartScreenViewportTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1648
	li ax, 0
	subi sp, 4
	ret 

Viewport::TweenPosition$9: ; 9 args
	sourceline 1649
	thisaddr 37015
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1650
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Viewport::TweenX$6
	call ax
	subi sp, 24
	pop op
	sourceline 1651
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Viewport::TweenY$6
	call ax
	subi sp, 24
	pop op
	sourceline 1652
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Viewport::TweenWidth$6
	call ax
	subi sp, 24
	pop op
	sourceline 1653
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Viewport::TweenHeight$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1654
	li ax, 0
	subi sp, 4
	ret 

Viewport::StopTweenPosition$1: ; 1 args
	sourceline 1656
	thisaddr 37274
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1657
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _GetScreenViewportIndex$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1658
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 44
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 1659
	li ax, 0
	subi sp, 8
	ret 

Viewport::StopAllTweens$1: ; 1 args
	sourceline 1660
	thisaddr 37350
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1661
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _GetScreenViewportIndex$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1662
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 9
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 1663
	li ax, 0
	subi sp, 8
	ret 

_GetCameraIndex$1: ; 1 args
	sourceline 1665
	thisaddr 37426
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 1666
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000037449: ; inside _GetCameraIndex$1, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 0
	setfuncargs 0
	li ax, Game::get_CameraCount
	farcall ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000037544
	sourceline 1667
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 8
	memread4 ax
	mr dx, ax
	li ax, 0
	farpush dx
	setfuncargs 1
	li ax, Game::geti_Cameras
	farcall ax
	farsubsp 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000037531
	sourceline 1668
	ptrstack 4
	memread4 ax
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
label000000037531: ; inside _GetCameraIndex$1, ; referenced by 1 spots
	sourceline 1670
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000037449
label000000037544: ; inside _GetCameraIndex$1, ; referenced by 1 spots
	subi sp, 4
	sourceline 1671
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

_StartCameraTween$11: ; 11 args
	sourceline 1673
	thisaddr 37556
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 1674
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, _GetCameraIndex$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1675
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 10
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	ptrstack 68
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 1676
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

Camera::TweenX$6: ; 6 args
	sourceline 1678
	thisaddr 37704
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1679
	li ax, 0
	setfuncargs 0
	li ax, Room::get_Width
	farcall ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Width
	farcall ax
	pop op
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 1680
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_X
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Y
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 46
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartCameraTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1681
	li ax, 0
	subi sp, 4
	ret 

Camera::TweenY$6: ; 6 args
	sourceline 1682
	thisaddr 37923
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1683
	li ax, 0
	setfuncargs 0
	li ax, Room::get_Height
	farcall ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Height
	farcall ax
	pop op
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 1684
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_X
	farcall ax
	pop op
	push ax
	ptrstack 40
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_X
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 46
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartCameraTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1685
	li ax, 0
	subi sp, 4
	ret 

Camera::TweenWidth$6: ; 6 args
	sourceline 1686
	thisaddr 38142
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1687
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Width
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Height
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 47
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartCameraTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1688
	li ax, 0
	subi sp, 4
	ret 

Camera::TweenHeight$6: ; 6 args
	sourceline 1689
	thisaddr 38294
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1690
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 40
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Camera::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 47
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StartCameraTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1691
	li ax, 0
	subi sp, 4
	ret 

Camera::TweenPosition$7: ; 7 args
	sourceline 1692
	thisaddr 38446
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1693
	push op
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Camera::TweenX$6
	call ax
	subi sp, 24
	pop op
	sourceline 1694
	push op
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Camera::TweenY$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1695
	li ax, 0
	subi sp, 4
	ret 

Camera::TweenSize$7: ; 7 args
	sourceline 1696
	thisaddr 38589
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1697
	push op
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Camera::TweenWidth$6
	call ax
	subi sp, 24
	pop op
	sourceline 1698
	push op
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Camera::TweenHeight$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1699
	li ax, 0
	subi sp, 4
	ret 

Camera::StopTweenPosition$1: ; 1 args
	sourceline 1701
	thisaddr 38732
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1702
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _GetCameraIndex$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1703
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 46
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 1704
	li ax, 0
	subi sp, 8
	ret 

Camera::StopTweenSize$1: ; 1 args
	sourceline 1705
	thisaddr 38808
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1706
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _GetCameraIndex$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1707
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 47
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 1708
	li ax, 0
	subi sp, 8
	ret 

Camera::StopAllTweens$1: ; 1 args
	sourceline 1709
	thisaddr 38884
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1710
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _GetCameraIndex$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1711
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 10
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 1712
	li ax, 0
	subi sp, 8
	ret 

TweenShakeScreen$9: ; 9 args
	sourceline 1731
	thisaddr 38960
	sourceline 1732
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 49
	push ax
	li ax, _StartMiscTween$11
	call ax
	subi sp, 44
	ret 
	sourceline 1733
	li ax, 0
	ret 

TweenAreaScaling$10: ; 10 args
	sourceline 1734
	thisaddr 39045
	sourceline 1735
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 50
	push ax
	li ax, _StartMiscTween$11
	call ax
	subi sp, 44
	ret 
	sourceline 1736
	li ax, 0
	ret 

TweenSpeechVolume$7: ; 7 args
	sourceline 1739
	thisaddr 39131
	sourceline 1740
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 36
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 51
	push ax
	li ax, _StartMiscTween$11
	call ax
	subi sp, 44
	ret 
	sourceline 1741
	li ax, 0
	ret 

GUI::TweenX$6: ; 6 args
	sourceline 1774
	thisaddr 39214
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1775
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 1
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1776
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenY$6: ; 6 args
	sourceline 1777
	thisaddr 39332
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1778
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 1
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1779
	li ax, 0
	subi sp, 4
	ret 

Object::TweenX$6: ; 6 args
	sourceline 1780
	thisaddr 39450
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1781
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 11
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1782
	li ax, 0
	subi sp, 4
	ret 

Object::TweenY$6: ; 6 args
	sourceline 1783
	thisaddr 39568
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1784
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 11
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1785
	li ax, 0
	subi sp, 4
	ret 

Character::TweenX$6: ; 6 args
	sourceline 1786
	thisaddr 39686
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1787
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_x
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 13
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1788
	li ax, 0
	subi sp, 4
	ret 

Character::TweenY$6: ; 6 args
	sourceline 1789
	thisaddr 39804
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1790
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 13
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1791
	li ax, 0
	subi sp, 4
	ret 

Character::TweenZ$6: ; 6 args
	sourceline 1792
	thisaddr 39922
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1793
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_z
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 17
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1794
	li ax, 0
	subi sp, 4
	ret 

GUIControl::TweenX$6: ; 6 args
	sourceline 1795
	thisaddr 40040
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1796
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1797
	li ax, 0
	subi sp, 4
	ret 

GUIControl::TweenY$6: ; 6 args
	sourceline 1798
	thisaddr 40158
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1799
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1800
	li ax, 0
	subi sp, 4
	ret 

Label::TweenX$6: ; 6 args
	sourceline 1801
	thisaddr 40276
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1802
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1803
	li ax, 0
	subi sp, 4
	ret 

Label::TweenY$6: ; 6 args
	sourceline 1804
	thisaddr 40394
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1805
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1806
	li ax, 0
	subi sp, 4
	ret 

Button::TweenX$6: ; 6 args
	sourceline 1807
	thisaddr 40512
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1808
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1809
	li ax, 0
	subi sp, 4
	ret 

Button::TweenY$6: ; 6 args
	sourceline 1810
	thisaddr 40630
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1811
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1812
	li ax, 0
	subi sp, 4
	ret 

Slider::TweenX$6: ; 6 args
	sourceline 1813
	thisaddr 40748
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1814
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1815
	li ax, 0
	subi sp, 4
	ret 

Slider::TweenY$6: ; 6 args
	sourceline 1816
	thisaddr 40866
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1817
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1818
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenX$6: ; 6 args
	sourceline 1819
	thisaddr 40984
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1820
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1821
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenY$6: ; 6 args
	sourceline 1822
	thisaddr 41102
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1823
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1824
	li ax, 0
	subi sp, 4
	ret 

InvWindow::TweenX$6: ; 6 args
	sourceline 1825
	thisaddr 41220
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1826
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1827
	li ax, 0
	subi sp, 4
	ret 

InvWindow::TweenY$6: ; 6 args
	sourceline 1828
	thisaddr 41338
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1829
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1830
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenPosition$7: ; 7 args
	sourceline 1833
	thisaddr 41456
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1834
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 1
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1835
	li ax, 0
	subi sp, 4
	ret 

Object::TweenPosition$7: ; 7 args
	sourceline 1836
	thisaddr 41592
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1837
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 11
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1838
	li ax, 0
	subi sp, 4
	ret 

Character::TweenPosition$7: ; 7 args
	sourceline 1839
	thisaddr 41728
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1840
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_x
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 13
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1841
	li ax, 0
	subi sp, 4
	ret 

GUIControl::TweenPosition$7: ; 7 args
	sourceline 1842
	thisaddr 41864
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1843
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1844
	li ax, 0
	subi sp, 4
	ret 

Label::TweenPosition$7: ; 7 args
	sourceline 1845
	thisaddr 42000
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1846
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1847
	li ax, 0
	subi sp, 4
	ret 

Button::TweenPosition$7: ; 7 args
	sourceline 1848
	thisaddr 42136
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1849
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1850
	li ax, 0
	subi sp, 4
	ret 

TextBox::TweenPosition$7: ; 7 args
	sourceline 1851
	thisaddr 42272
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1852
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1853
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenPosition$7: ; 7 args
	sourceline 1854
	thisaddr 42408
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1855
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1856
	li ax, 0
	subi sp, 4
	ret 

Slider::TweenPosition$7: ; 7 args
	sourceline 1857
	thisaddr 42544
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1858
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1859
	li ax, 0
	subi sp, 4
	ret 

InvWindow::TweenPosition$7: ; 7 args
	sourceline 1860
	thisaddr 42680
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1861
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Y
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_X
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 26
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1862
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenTransparency$6: ; 6 args
	sourceline 1865
	thisaddr 42816
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1866
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Transparency
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 2
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1867
	li ax, 0
	subi sp, 4
	ret 

Object::TweenTransparency$6: ; 6 args
	sourceline 1868
	thisaddr 42934
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1869
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Transparency
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 12
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1870
	li ax, 0
	subi sp, 4
	ret 

Character::TweenTransparency$6: ; 6 args
	sourceline 1871
	thisaddr 43052
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1872
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Transparency
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 15
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1873
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenFadeOut$5: ; 5 args
	sourceline 1877
	thisaddr 43170
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1878
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 100
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1879
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenFadeIn$5: ; 5 args
	sourceline 1880
	thisaddr 43254
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1881
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1882
	li ax, 0
	subi sp, 4
	ret 

Object::TweenFadeOut$5: ; 5 args
	sourceline 1883
	thisaddr 43338
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1884
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 100
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1885
	li ax, 0
	subi sp, 4
	ret 

Object::TweenFadeIn$5: ; 5 args
	sourceline 1886
	thisaddr 43422
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1887
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1888
	li ax, 0
	subi sp, 4
	ret 

Character::TweenFadeOut$5: ; 5 args
	sourceline 1889
	thisaddr 43506
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1890
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 100
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1891
	li ax, 0
	subi sp, 4
	ret 

Character::TweenFadeIn$5: ; 5 args
	sourceline 1892
	thisaddr 43590
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1893
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1894
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenSize$7: ; 7 args
	sourceline 1897
	thisaddr 43674
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1898
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 3
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1899
	li ax, 0
	subi sp, 4
	ret 

GUIControl::TweenSize$7: ; 7 args
	sourceline 1900
	thisaddr 43810
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1901
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 27
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1902
	li ax, 0
	subi sp, 4
	ret 

Label::TweenSize$7: ; 7 args
	sourceline 1903
	thisaddr 43946
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1904
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 27
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1905
	li ax, 0
	subi sp, 4
	ret 

Button::TweenSize$7: ; 7 args
	sourceline 1906
	thisaddr 44082
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1907
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 27
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1908
	li ax, 0
	subi sp, 4
	ret 

TextBox::TweenSize$7: ; 7 args
	sourceline 1909
	thisaddr 44218
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1910
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 27
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1911
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenSize$7: ; 7 args
	sourceline 1912
	thisaddr 44354
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1913
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 27
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1914
	li ax, 0
	subi sp, 4
	ret 

Slider::TweenSize$7: ; 7 args
	sourceline 1915
	thisaddr 44490
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1916
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 27
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1917
	li ax, 0
	subi sp, 4
	ret 

InvWindow::TweenSize$7: ; 7 args
	sourceline 1918
	thisaddr 44626
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1919
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Height
	farcall ax
	pop op
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_Width
	farcall ax
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 27
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1920
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenZOrder$6: ; 6 args
	sourceline 1923
	thisaddr 44762
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1924
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ZOrder
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 4
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 1925
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenBackgroundColorRed$6: ; 6 args
	sourceline 1928
	thisaddr 44880
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1929
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1930
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 1931
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 5
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 1932
	li ax, 0
	subi sp, 8
	ret 

GUI::TweenBackgroundColorGreen$6: ; 6 args
	sourceline 1933
	thisaddr 45052
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1934
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1935
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 1936
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 6
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 1937
	li ax, 0
	subi sp, 8
	ret 

GUI::TweenBackgroundColorBlue$6: ; 6 args
	sourceline 1938
	thisaddr 45224
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1939
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BackgroundColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1940
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 1941
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 7
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 1942
	li ax, 0
	subi sp, 8
	ret 

GUI::TweenBackgroundColorRGB$8: ; 8 args
	sourceline 1943
	thisaddr 45396
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1944
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBackgroundColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 1945
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBackgroundColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 1946
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBackgroundColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1947
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenBackgroundColor$6: ; 6 args
	sourceline 1948
	thisaddr 45597
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1949
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 1950
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1951
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1952
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1953
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBackgroundColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 1954
	li ax, 0
	subi sp, 16
	ret 

GUI::StopTweenBackgroundColorRed$1: ; 1 args
	sourceline 1955
	thisaddr 45791
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1956
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 5
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 1957
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBackgroundColorGreen$1: ; 1 args
	sourceline 1958
	thisaddr 45856
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1959
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 6
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 1960
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBackgroundColorBlue$1: ; 1 args
	sourceline 1961
	thisaddr 45921
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1962
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 7
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 1963
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBackgroundColorRGB$1: ; 1 args
	sourceline 1964
	thisaddr 45986
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1965
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBackgroundColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 1966
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBackgroundColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 1967
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBackgroundColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 1968
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBackgroundColor$1: ; 1 args
	sourceline 1969
	thisaddr 46095
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1970
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBackgroundColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 1971
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenBorderColorRed$6: ; 6 args
	sourceline 1973
	thisaddr 46146
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1974
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1975
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 1976
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 8
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 1977
	li ax, 0
	subi sp, 8
	ret 

GUI::TweenBorderColorGreen$6: ; 6 args
	sourceline 1978
	thisaddr 46318
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1979
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1980
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 1981
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 9
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 1982
	li ax, 0
	subi sp, 8
	ret 

GUI::TweenBorderColorBlue$6: ; 6 args
	sourceline 1983
	thisaddr 46490
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1984
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_BorderColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1985
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 1986
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 10
	push ax
	li ax, _StartGUITween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 1987
	li ax, 0
	subi sp, 8
	ret 

GUI::TweenBorderColorRGB$8: ; 8 args
	sourceline 1988
	thisaddr 46662
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1989
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBorderColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 1990
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBorderColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 1991
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBorderColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 1992
	li ax, 0
	subi sp, 4
	ret 

GUI::TweenBorderColor$6: ; 6 args
	sourceline 1993
	thisaddr 46863
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 1994
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 1995
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1996
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1997
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 1998
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::TweenBorderColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 1999
	li ax, 0
	subi sp, 16
	ret 

GUI::StopTweenBorderColorRed$1: ; 1 args
	sourceline 2000
	thisaddr 47057
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2001
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 8
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2002
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBorderColorGreen$1: ; 1 args
	sourceline 2003
	thisaddr 47122
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2004
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 9
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2005
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBorderColorBlue$1: ; 1 args
	sourceline 2006
	thisaddr 47187
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2007
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 10
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2008
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBorderColorRGB$1: ; 1 args
	sourceline 2009
	thisaddr 47252
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2010
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBorderColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2011
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBorderColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2012
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBorderColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2013
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenBorderColor$1: ; 1 args
	sourceline 2014
	thisaddr 47361
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2015
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, GUI::StopTweenBorderColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 2016
	li ax, 0
	subi sp, 4
	ret 

Object::TweenImage$7: ; 7 args
	sourceline 2020
	thisaddr 47412
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2021
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	ptrstack 12
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 2022
	push op
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Y
	farcall ax
	pop op
	farpush ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_X
	farcall ax
	pop op
	farpush ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, Object::SetPosition^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 2023
	li ax, 0
	ptrstack 12
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Transparency
	farcall ax
	farsubsp 1
	pop op
	sourceline 2024
	li ax, 1
	ptrstack 12
	push mar
	pop mar
	push ax
	ptrget ax
	pop bx
	push ax
	mr ax, bx
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 2026
	li ax, 100
	push op
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Transparency
	farcall ax
	farsubsp 1
	pop op
	sourceline 2027
	ptrstack 20
	memread4 ax
	push op
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 2029
	ptrstack 28
	memread4 ax
	push ax
	li ax, 919
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000047806
	sourceline 2030
	push op
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 100
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, Object::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	sourceline 2031
	jmpi label000000047865
label000000047806: ; inside Object::TweenImage$7, ; referenced by 1 spots
	sourceline 2033
	push op
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 100
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, Object::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
label000000047865: ; inside Object::TweenImage$7, ; referenced by 1 spots
	sourceline 2036
	push op
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 40
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTransparency$6
	call ax
	subi sp, 24
	pop op
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 2037
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

Character::TweenAnimationSpeed$6: ; 6 args
	sourceline 2040
	thisaddr 47942
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2041
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_AnimationSpeed
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 16
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2042
	li ax, 0
	subi sp, 4
	ret 

Character::TweenScaling$6: ; 6 args
	sourceline 2043
	thisaddr 48060
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2044
	li ax, 1
	push op
	mr bx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_ManualScaling
	farcall ax
	farsubsp 1
	pop op
	sourceline 2045
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Scaling
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 14
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2046
	li ax, 0
	subi sp, 4
	ret 

Character::TweenTintRed$6: ; 6 args
	sourceline 2049
	thisaddr 48210
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2050
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2051
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintRed
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 71
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2052
	li ax, 0
	subi sp, 4
	ret 

Character::TweenTintGreen$6: ; 6 args
	sourceline 2053
	thisaddr 48358
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2054
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2055
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintGreen
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 72
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2056
	li ax, 0
	subi sp, 4
	ret 

Character::TweenTintBlue$6: ; 6 args
	sourceline 2057
	thisaddr 48506
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2058
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2059
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintBlue
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 73
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2060
	li ax, 0
	subi sp, 4
	ret 

Character::TweenTintSaturation$6: ; 6 args
	sourceline 2061
	thisaddr 48654
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2062
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2063
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 74
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2064
	li ax, 0
	subi sp, 4
	ret 

Character::TweenTintLuminance$6: ; 6 args
	sourceline 2065
	thisaddr 48802
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2066
	li ax, 100
	push ax
	li ax, 1
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2067
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_TintLuminance
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 75
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2068
	li ax, 0
	subi sp, 4
	ret 

Character::TweenTint$10: ; 10 args
	sourceline 2069
	thisaddr 48950
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2070
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::TweenTintRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2071
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::TweenTintGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2072
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::TweenTintBlue$6
	call ax
	subi sp, 24
	pop op
	sourceline 2073
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::TweenTintSaturation$6
	call ax
	subi sp, 24
	pop op
	sourceline 2075
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::TweenTintLuminance$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2076
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenTintRed$1: ; 1 args
	sourceline 2077
	thisaddr 49271
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2078
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 71
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2079
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenTintGreen$1: ; 1 args
	sourceline 2080
	thisaddr 49336
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2081
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 72
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2082
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenTintBlue$1: ; 1 args
	sourceline 2083
	thisaddr 49401
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2084
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 73
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2085
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenTintSaturation$1: ; 1 args
	sourceline 2086
	thisaddr 49466
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2087
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 74
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2088
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenTintLuminance$1: ; 1 args
	sourceline 2089
	thisaddr 49531
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2090
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 75
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2091
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenTint$1: ; 1 args
	sourceline 2092
	thisaddr 49596
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2093
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::StopTweenTintRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2094
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::StopTweenTintGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2095
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::StopTweenTintBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2096
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::StopTweenTintSaturation$1
	call ax
	subi sp, 4
	pop op
	sourceline 2097
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Character::StopTweenTintLuminance$1
	call ax
	subi sp, 4
	pop op
	sourceline 2098
	li ax, 0
	subi sp, 4
	ret 

Object::TweenTintRed$6: ; 6 args
	sourceline 2100
	thisaddr 49763
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2101
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2102
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintRed
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 76
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2103
	li ax, 0
	subi sp, 4
	ret 

Object::TweenTintGreen$6: ; 6 args
	sourceline 2104
	thisaddr 49911
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2105
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2106
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintGreen
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 77
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2107
	li ax, 0
	subi sp, 4
	ret 

Object::TweenTintBlue$6: ; 6 args
	sourceline 2108
	thisaddr 50059
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2109
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2110
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintBlue
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 78
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2111
	li ax, 0
	subi sp, 4
	ret 

Object::TweenTintSaturation$6: ; 6 args
	sourceline 2112
	thisaddr 50207
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2113
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2114
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 79
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2115
	li ax, 0
	subi sp, 4
	ret 

Object::TweenTintLuminance$6: ; 6 args
	sourceline 2116
	thisaddr 50355
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2117
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2118
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_TintLuminance
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 80
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2119
	li ax, 0
	subi sp, 4
	ret 

Object::TweenTint$10: ; 10 args
	sourceline 2120
	thisaddr 50503
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2121
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTintRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2122
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTintGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2123
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTintBlue$6
	call ax
	subi sp, 24
	pop op
	sourceline 2124
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTintSaturation$6
	call ax
	subi sp, 24
	pop op
	sourceline 2126
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::TweenTintLuminance$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2127
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenTintRed$1: ; 1 args
	sourceline 2128
	thisaddr 50824
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2129
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 76
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2130
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenTintGreen$1: ; 1 args
	sourceline 2131
	thisaddr 50889
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2132
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 77
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2133
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenTintBlue$1: ; 1 args
	sourceline 2134
	thisaddr 50954
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2135
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 78
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2136
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenTintSaturation$1: ; 1 args
	sourceline 2137
	thisaddr 51019
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2138
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 79
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2139
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenTintLuminance$1: ; 1 args
	sourceline 2140
	thisaddr 51084
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2141
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 80
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2142
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenTint$1: ; 1 args
	sourceline 2143
	thisaddr 51149
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2144
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::StopTweenTintRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2145
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::StopTweenTintGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2146
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::StopTweenTintBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2147
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::StopTweenTintSaturation$1
	call ax
	subi sp, 4
	pop op
	sourceline 2148
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Object::StopTweenTintLuminance$1
	call ax
	subi sp, 4
	pop op
	sourceline 2149
	li ax, 0
	subi sp, 4
	ret 

Region::TweenLightLevel$6: ; 6 args
	sourceline 2153
	thisaddr 51316
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2154
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2155
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_LightLevel
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 18
	push ax
	li ax, _StartRegionTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2156
	li ax, 0
	subi sp, 4
	ret 

Region::TweenTintRed$6: ; 6 args
	sourceline 2157
	thisaddr 51464
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2158
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2159
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintRed
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 19
	push ax
	li ax, _StartRegionTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2160
	li ax, 0
	subi sp, 4
	ret 

Region::TweenTintGreen$6: ; 6 args
	sourceline 2161
	thisaddr 51612
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2162
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2163
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintGreen
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 20
	push ax
	li ax, _StartRegionTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2164
	li ax, 0
	subi sp, 4
	ret 

Region::TweenTintBlue$6: ; 6 args
	sourceline 2165
	thisaddr 51760
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2166
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2167
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintBlue
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 21
	push ax
	li ax, _StartRegionTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2168
	li ax, 0
	subi sp, 4
	ret 

Region::TweenTintSaturation$6: ; 6 args
	sourceline 2169
	thisaddr 51908
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2170
	li ax, 100
	push ax
	li ax, 1
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2171
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintSaturation
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 22
	push ax
	li ax, _StartRegionTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2172
	li ax, 0
	subi sp, 4
	ret 

Region::TweenTintLuminance$6: ; 6 args
	sourceline 2173
	thisaddr 52056
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2174
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2175
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_TintLuminance
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 63
	push ax
	li ax, _StartRegionTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2176
	li ax, 0
	subi sp, 4
	ret 

Region::TweenTint$10: ; 10 args
	sourceline 2177
	thisaddr 52204
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2178
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::TweenTintRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2179
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::TweenTintGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2180
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::TweenTintBlue$6
	call ax
	subi sp, 24
	pop op
	sourceline 2181
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::TweenTintSaturation$6
	call ax
	subi sp, 24
	pop op
	sourceline 2183
	push op
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::TweenTintLuminance$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2184
	li ax, 0
	subi sp, 4
	ret 

Label::TweenTextColorRed$6: ; 6 args
	sourceline 2187
	thisaddr 52522
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2188
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2189
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2190
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 23
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2191
	li ax, 0
	subi sp, 8
	ret 

Label::TweenTextColorGreen$6: ; 6 args
	sourceline 2192
	thisaddr 52694
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2193
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2194
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2195
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 24
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2196
	li ax, 0
	subi sp, 8
	ret 

Label::TweenTextColorBlue$6: ; 6 args
	sourceline 2197
	thisaddr 52866
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2198
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2199
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2200
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 25
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2201
	li ax, 0
	subi sp, 8
	ret 

Label::TweenTextColorRGB$8: ; 8 args
	sourceline 2202
	thisaddr 53038
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2203
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::TweenTextColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2204
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::TweenTextColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2205
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::TweenTextColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2206
	li ax, 0
	subi sp, 4
	ret 

Label::TweenTextColor$6: ; 6 args
	sourceline 2207
	thisaddr 53239
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2208
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 2209
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2210
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2211
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2212
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::TweenTextColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 2213
	li ax, 0
	subi sp, 16
	ret 

Button::TweenTextColorRed$6: ; 6 args
	sourceline 2216
	thisaddr 53433
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2217
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2218
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2219
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 28
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2220
	li ax, 0
	subi sp, 8
	ret 

Button::TweenTextColorGreen$6: ; 6 args
	sourceline 2221
	thisaddr 53605
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2222
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2223
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2224
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 29
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2225
	li ax, 0
	subi sp, 8
	ret 

Button::TweenTextColorBlue$6: ; 6 args
	sourceline 2226
	thisaddr 53777
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2227
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Button::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2228
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2229
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 30
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2230
	li ax, 0
	subi sp, 8
	ret 

Button::TweenTextColorRGB$8: ; 8 args
	sourceline 2231
	thisaddr 53949
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2232
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::TweenTextColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2233
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::TweenTextColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2234
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::TweenTextColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2235
	li ax, 0
	subi sp, 4
	ret 

Button::TweenTextColor$6: ; 6 args
	sourceline 2236
	thisaddr 54150
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2237
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 2238
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2239
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2240
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2241
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::TweenTextColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 2242
	li ax, 0
	subi sp, 16
	ret 

ListBox::TweenSelectedIndex$6: ; 6 args
	sourceline 2245
	thisaddr 54344
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2246
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 32
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2247
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenTopItem$6: ; 6 args
	sourceline 2248
	thisaddr 54462
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2249
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TopItem
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 33
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2250
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenSelectedBackColorRed$6: ; 6 args
	sourceline 2252
	thisaddr 54580
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2253
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2254
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2255
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 34
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2256
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenSelectedBackColorGreen$6: ; 6 args
	sourceline 2257
	thisaddr 54752
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2258
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2259
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2260
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 35
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2261
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenSelectedBackColorBlue$6: ; 6 args
	sourceline 2262
	thisaddr 54924
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2263
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedBackColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2264
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2265
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 36
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2266
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenSelectedBackColorRGB$8: ; 8 args
	sourceline 2267
	thisaddr 55096
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2268
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedBackColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2269
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedBackColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2270
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedBackColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2271
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenSelectedBackColor$6: ; 6 args
	sourceline 2272
	thisaddr 55297
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2273
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 2274
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2275
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2276
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2277
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedBackColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 2278
	li ax, 0
	subi sp, 16
	ret 

ListBox::StopTweenSelectedBackColorRed$1: ; 1 args
	sourceline 2279
	thisaddr 55491
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2280
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 34
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2281
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedBackColorGreen$1: ; 1 args
	sourceline 2282
	thisaddr 55556
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2283
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 35
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2284
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedBackColorBlue$1: ; 1 args
	sourceline 2285
	thisaddr 55621
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2286
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 36
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2287
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedBackColorRGB$1: ; 1 args
	sourceline 2288
	thisaddr 55686
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2289
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedBackColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2290
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedBackColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2291
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedBackColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2292
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedBackColor$1: ; 1 args
	sourceline 2293
	thisaddr 55795
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2294
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedBackColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 2295
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenSelectedTextColorRed$6: ; 6 args
	sourceline 2297
	thisaddr 55846
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2298
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2299
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2300
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 37
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2301
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenSelectedTextColorGreen$6: ; 6 args
	sourceline 2302
	thisaddr 56018
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2303
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2304
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2305
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 38
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2306
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenSelectedTextColorBlue$6: ; 6 args
	sourceline 2307
	thisaddr 56190
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2308
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedTextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2309
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2310
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 39
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2311
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenSelectedTextColorRGB$8: ; 8 args
	sourceline 2312
	thisaddr 56362
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2313
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedTextColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2314
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedTextColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2315
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedTextColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2316
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenSelectedTextColor$6: ; 6 args
	sourceline 2317
	thisaddr 56563
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2318
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 2319
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2320
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2321
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2322
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenSelectedTextColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 2323
	li ax, 0
	subi sp, 16
	ret 

ListBox::StopTweenSelectedTextColorRed$1: ; 1 args
	sourceline 2324
	thisaddr 56757
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2325
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 37
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2326
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedTextColorGreen$1: ; 1 args
	sourceline 2327
	thisaddr 56822
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2328
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 38
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2329
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedTextColorBlue$1: ; 1 args
	sourceline 2330
	thisaddr 56887
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2331
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 39
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2332
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedTextColorRGB$1: ; 1 args
	sourceline 2333
	thisaddr 56952
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2334
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedTextColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2335
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedTextColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2336
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedTextColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2337
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedTextColor$1: ; 1 args
	sourceline 2338
	thisaddr 57061
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2339
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenSelectedTextColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 2340
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenTextColorRed$6: ; 6 args
	sourceline 2342
	thisaddr 57112
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2343
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2344
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2345
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 40
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2346
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenTextColorGreen$6: ; 6 args
	sourceline 2347
	thisaddr 57284
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2348
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2349
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2350
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 41
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2351
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenTextColorBlue$6: ; 6 args
	sourceline 2352
	thisaddr 57456
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2353
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2354
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2355
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 42
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2356
	li ax, 0
	subi sp, 8
	ret 

ListBox::TweenTextColorRGB$8: ; 8 args
	sourceline 2357
	thisaddr 57628
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2358
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenTextColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2359
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenTextColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2360
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenTextColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2361
	li ax, 0
	subi sp, 4
	ret 

ListBox::TweenTextColor$6: ; 6 args
	sourceline 2362
	thisaddr 57829
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2363
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 2364
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2365
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2366
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2367
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::TweenTextColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 2368
	li ax, 0
	subi sp, 16
	ret 

ListBox::StopTweenTextColorRed$1: ; 1 args
	sourceline 2369
	thisaddr 58023
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2370
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 40
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2371
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenTextColorGreen$1: ; 1 args
	sourceline 2372
	thisaddr 58088
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2373
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 41
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2374
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenTextColorBlue$1: ; 1 args
	sourceline 2375
	thisaddr 58153
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2376
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 42
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2377
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenTextColorRGB$1: ; 1 args
	sourceline 2378
	thisaddr 58218
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2379
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenTextColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2380
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenTextColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2381
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenTextColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2382
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenTextColor$1: ; 1 args
	sourceline 2383
	thisaddr 58327
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2384
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, ListBox::StopTweenTextColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 2385
	li ax, 0
	subi sp, 4
	ret 

InvWindow::TweenTopItem$6: ; 6 args
	sourceline 2389
	thisaddr 58378
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2390
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, InvWindow::get_TopItem
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 43
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2391
	li ax, 0
	subi sp, 4
	ret 

Slider::TweenValue$6: ; 6 args
	sourceline 2394
	thisaddr 58496
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2395
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 31
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2396
	li ax, 0
	subi sp, 4
	ret 

GUI::StopAllTweens$1: ; 1 args
	sourceline 2399
	thisaddr 58614
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2400
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 1
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2401
	li ax, 0
	subi sp, 4
	ret 

Object::StopAllTweens$1: ; 1 args
	sourceline 2402
	thisaddr 58679
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2403
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 2
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2404
	li ax, 0
	subi sp, 4
	ret 

Character::StopAllTweens$1: ; 1 args
	sourceline 2405
	thisaddr 58744
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2406
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 3
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2407
	li ax, 0
	subi sp, 4
	ret 

Region::StopAllTweens$1: ; 1 args
	sourceline 2408
	thisaddr 58809
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2409
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 4
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2410
	li ax, 0
	subi sp, 4
	ret 

GUIControl::StopAllTweens$1: ; 1 args
	sourceline 2411
	thisaddr 58874
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2412
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 5
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2413
	li ax, 0
	subi sp, 4
	ret 

Label::StopAllTweens$1: ; 1 args
	sourceline 2414
	thisaddr 58939
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2415
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 5
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2416
	li ax, 0
	subi sp, 4
	ret 

Button::StopAllTweens$1: ; 1 args
	sourceline 2417
	thisaddr 59004
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2418
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 5
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2419
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopAllTweens$1: ; 1 args
	sourceline 2420
	thisaddr 59069
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2421
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUIControl::get_ID
	farcall ax
	pop op
	push ax
	li ax, 5
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2422
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopAllTweens$1: ; 1 args
	sourceline 2423
	thisaddr 59134
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2424
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControl$2
	call ax
	subi sp, 8
	sourceline 2425
	li ax, 0
	subi sp, 4
	ret 

Slider::StopAllTweens$1: ; 1 args
	sourceline 2426
	thisaddr 59181
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2427
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControl$2
	call ax
	subi sp, 8
	sourceline 2428
	li ax, 0
	subi sp, 4
	ret 

InvWindow::StopAllTweens$1: ; 1 args
	sourceline 2429
	thisaddr 59228
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2430
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControl$2
	call ax
	subi sp, 8
	sourceline 2431
	li ax, 0
	subi sp, 4
	ret 

StopTweenShakeScreen$1: ; 1 args
	sourceline 2437
	thisaddr 59275
	sourceline 2438
	ptrstack 8
	memread4 ax
	push ax
	li ax, 49
	push ax
	li ax, _StopTweensOfType$2
	call ax
	subi sp, 8
	sourceline 2439
	li ax, 0
	ret 

StopTweenAreaScaling$2: ; 2 args
	sourceline 2440
	thisaddr 59306
	sourceline 2441
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 50
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2442
	li ax, 0
	ret 

StopTweenSpeechVolume$1: ; 1 args
	sourceline 2443
	thisaddr 59343
	sourceline 2444
	ptrstack 8
	memread4 ax
	push ax
	li ax, 51
	push ax
	li ax, _StopTweensOfType$2
	call ax
	subi sp, 8
	sourceline 2445
	li ax, 0
	ret 

Character::StopTweenPosition$1: ; 1 args
	sourceline 2463
	thisaddr 59374
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2464
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 13
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2465
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenPosition$1: ; 1 args
	sourceline 2466
	thisaddr 59439
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2467
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 11
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2468
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenPosition$1: ; 1 args
	sourceline 2469
	thisaddr 59504
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2470
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 1
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2471
	li ax, 0
	subi sp, 4
	ret 

GUIControl::StopTweenPosition$1: ; 1 args
	sourceline 2472
	thisaddr 59569
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2473
	ptrstack 12
	memread4 ax
	push ax
	li ax, 26
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2474
	li ax, 0
	subi sp, 4
	ret 

Label::StopTweenPosition$1: ; 1 args
	sourceline 2475
	thisaddr 59621
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2476
	ptrstack 12
	memread4 ax
	push ax
	li ax, 26
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2477
	li ax, 0
	subi sp, 4
	ret 

Button::StopTweenPosition$1: ; 1 args
	sourceline 2478
	thisaddr 59673
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2479
	ptrstack 12
	memread4 ax
	push ax
	li ax, 26
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2480
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopTweenPosition$1: ; 1 args
	sourceline 2481
	thisaddr 59725
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2482
	ptrstack 12
	memread4 ax
	push ax
	li ax, 26
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2483
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenPosition$1: ; 1 args
	sourceline 2484
	thisaddr 59777
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2485
	ptrstack 12
	memread4 ax
	push ax
	li ax, 26
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2486
	li ax, 0
	subi sp, 4
	ret 

Slider::StopTweenPosition$1: ; 1 args
	sourceline 2487
	thisaddr 59829
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2488
	ptrstack 12
	memread4 ax
	push ax
	li ax, 26
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2489
	li ax, 0
	subi sp, 4
	ret 

InvWindow::StopTweenPosition$1: ; 1 args
	sourceline 2490
	thisaddr 59881
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2491
	ptrstack 12
	memread4 ax
	push ax
	li ax, 26
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2492
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenTransparency$1: ; 1 args
	sourceline 2493
	thisaddr 59933
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2494
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 15
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2495
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenTransparency$1: ; 1 args
	sourceline 2496
	thisaddr 59998
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2497
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 12
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2498
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenTransparency$1: ; 1 args
	sourceline 2499
	thisaddr 60063
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2500
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 2
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2501
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenZ$1: ; 1 args
	sourceline 2502
	thisaddr 60128
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2503
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 17
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2504
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenZOrder$1: ; 1 args
	sourceline 2505
	thisaddr 60193
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2506
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 4
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2507
	li ax, 0
	subi sp, 4
	ret 

GUI::StopTweenSize$1: ; 1 args
	sourceline 2508
	thisaddr 60258
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2509
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_ID
	farcall ax
	pop op
	push ax
	li ax, 3
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2510
	li ax, 0
	subi sp, 4
	ret 

GUIControl::StopTweenSize$1: ; 1 args
	sourceline 2511
	thisaddr 60323
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2512
	ptrstack 12
	memread4 ax
	push ax
	li ax, 27
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2513
	li ax, 0
	subi sp, 4
	ret 

Label::StopTweenSize$1: ; 1 args
	sourceline 2514
	thisaddr 60375
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2515
	ptrstack 12
	memread4 ax
	push ax
	li ax, 27
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2516
	li ax, 0
	subi sp, 4
	ret 

Button::StopTweenSize$1: ; 1 args
	sourceline 2517
	thisaddr 60427
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2518
	ptrstack 12
	memread4 ax
	push ax
	li ax, 27
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2519
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopTweenSize$1: ; 1 args
	sourceline 2520
	thisaddr 60479
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2521
	ptrstack 12
	memread4 ax
	push ax
	li ax, 27
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2522
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSize$1: ; 1 args
	sourceline 2523
	thisaddr 60531
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2524
	ptrstack 12
	memread4 ax
	push ax
	li ax, 27
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2525
	li ax, 0
	subi sp, 4
	ret 

Slider::StopTweenSize$1: ; 1 args
	sourceline 2526
	thisaddr 60583
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2527
	ptrstack 12
	memread4 ax
	push ax
	li ax, 27
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2528
	li ax, 0
	subi sp, 4
	ret 

InvWindow::StopTweenSize$1: ; 1 args
	sourceline 2529
	thisaddr 60635
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2530
	ptrstack 12
	memread4 ax
	push ax
	li ax, 27
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2531
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenScaling$1: ; 1 args
	sourceline 2532
	thisaddr 60687
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2533
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 14
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2534
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenAnimationSpeed$1: ; 1 args
	sourceline 2535
	thisaddr 60752
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2536
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 16
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2537
	li ax, 0
	subi sp, 4
	ret 

Region::StopTweenLightLevel$1: ; 1 args
	sourceline 2538
	thisaddr 60817
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2539
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 18
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2540
	li ax, 0
	subi sp, 4
	ret 

Region::StopTweenTintRed$1: ; 1 args
	sourceline 2541
	thisaddr 60882
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2542
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 19
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2543
	li ax, 0
	subi sp, 4
	ret 

Region::StopTweenTintGreen$1: ; 1 args
	sourceline 2544
	thisaddr 60947
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2545
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 20
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2546
	li ax, 0
	subi sp, 4
	ret 

Region::StopTweenTintBlue$1: ; 1 args
	sourceline 2547
	thisaddr 61012
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2548
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 21
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2549
	li ax, 0
	subi sp, 4
	ret 

Region::StopTweenTintSaturation$1: ; 1 args
	sourceline 2550
	thisaddr 61077
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2551
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 22
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2552
	li ax, 0
	subi sp, 4
	ret 

Region::StopTweenTintLuminance$1: ; 1 args
	sourceline 2553
	thisaddr 61142
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2554
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Region::get_ID
	farcall ax
	pop op
	push ax
	li ax, 63
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2555
	li ax, 0
	subi sp, 4
	ret 

Region::StopTweenTint$1: ; 1 args
	sourceline 2556
	thisaddr 61207
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2557
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::StopTweenTintRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2558
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::StopTweenTintGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2559
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::StopTweenTintBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2560
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::StopTweenTintSaturation$1
	call ax
	subi sp, 4
	pop op
	sourceline 2561
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Region::StopTweenTintLuminance$1
	call ax
	subi sp, 4
	pop op
	sourceline 2562
	li ax, 0
	subi sp, 4
	ret 

Label::StopTweenTextColorRed$1: ; 1 args
	sourceline 2563
	thisaddr 61374
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2564
	ptrstack 12
	memread4 ax
	push ax
	li ax, 23
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2565
	li ax, 0
	subi sp, 4
	ret 

Label::StopTweenTextColorGreen$1: ; 1 args
	sourceline 2566
	thisaddr 61426
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2567
	ptrstack 12
	memread4 ax
	push ax
	li ax, 24
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2568
	li ax, 0
	subi sp, 4
	ret 

Label::StopTweenTextColorBlue$1: ; 1 args
	sourceline 2569
	thisaddr 61478
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2570
	ptrstack 12
	memread4 ax
	push ax
	li ax, 25
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2571
	li ax, 0
	subi sp, 4
	ret 

Label::StopTweenTextColorRGB$1: ; 1 args
	sourceline 2572
	thisaddr 61530
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2573
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::StopTweenTextColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2574
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::StopTweenTextColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2575
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::StopTweenTextColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2576
	li ax, 0
	subi sp, 4
	ret 

Label::StopTweenTextColor$1: ; 1 args
	sourceline 2577
	thisaddr 61639
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2578
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Label::StopTweenTextColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 2579
	li ax, 0
	subi sp, 4
	ret 

Button::StopTweenTextColorRed$1: ; 1 args
	sourceline 2580
	thisaddr 61690
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2581
	ptrstack 12
	memread4 ax
	push ax
	li ax, 28
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2582
	li ax, 0
	subi sp, 4
	ret 

Button::StopTweenTextColorGreen$1: ; 1 args
	sourceline 2583
	thisaddr 61742
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2584
	ptrstack 12
	memread4 ax
	push ax
	li ax, 29
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2585
	li ax, 0
	subi sp, 4
	ret 

Button::StopTweenTextColorBlue$1: ; 1 args
	sourceline 2586
	thisaddr 61794
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2587
	ptrstack 12
	memread4 ax
	push ax
	li ax, 30
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2588
	li ax, 0
	subi sp, 4
	ret 

Button::StopTweenTextColorRGB$1: ; 1 args
	sourceline 2589
	thisaddr 61846
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2590
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::StopTweenTextColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2591
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::StopTweenTextColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2592
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::StopTweenTextColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2593
	li ax, 0
	subi sp, 4
	ret 

Button::StopTweenTextColor$1: ; 1 args
	sourceline 2594
	thisaddr 61955
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2595
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, Button::StopTweenTextColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 2596
	li ax, 0
	subi sp, 4
	ret 

Slider::StopTweenValue$1: ; 1 args
	sourceline 2597
	thisaddr 62006
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2598
	ptrstack 12
	memread4 ax
	push ax
	li ax, 31
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2599
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenSelectedIndex$1: ; 1 args
	sourceline 2600
	thisaddr 62058
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2601
	ptrstack 12
	memread4 ax
	push ax
	li ax, 32
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2602
	li ax, 0
	subi sp, 4
	ret 

ListBox::StopTweenTopItem$1: ; 1 args
	sourceline 2603
	thisaddr 62110
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2604
	ptrstack 12
	memread4 ax
	push ax
	li ax, 33
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2605
	li ax, 0
	subi sp, 4
	ret 

InvWindow::StopTweenTopItem$1: ; 1 args
	sourceline 2606
	thisaddr 62162
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2607
	ptrstack 12
	memread4 ax
	push ax
	li ax, 43
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2608
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopTweenTextColorRed$1: ; 1 args
	sourceline 2611
	thisaddr 62214
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2612
	ptrstack 12
	memread4 ax
	push ax
	li ax, 52
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2613
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopTweenTextColorGreen$1: ; 1 args
	sourceline 2614
	thisaddr 62266
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2615
	ptrstack 12
	memread4 ax
	push ax
	li ax, 53
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2616
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopTweenTextColorBlue$1: ; 1 args
	sourceline 2617
	thisaddr 62318
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2618
	ptrstack 12
	memread4 ax
	push ax
	li ax, 54
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2619
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopTweenTextColorRGB$1: ; 1 args
	sourceline 2620
	thisaddr 62370
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2621
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::StopTweenTextColorRed$1
	call ax
	subi sp, 4
	pop op
	sourceline 2622
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::StopTweenTextColorGreen$1
	call ax
	subi sp, 4
	pop op
	sourceline 2623
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::StopTweenTextColorBlue$1
	call ax
	subi sp, 4
	pop op
	sourceline 2624
	li ax, 0
	subi sp, 4
	ret 

TextBox::StopTweenTextColor$1: ; 1 args
	sourceline 2625
	thisaddr 62479
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2626
	push op
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::StopTweenTextColorRGB$1
	call ax
	subi sp, 4
	pop op
	sourceline 2627
	li ax, 0
	subi sp, 4
	ret 

Slider::StopTweenHandleOffset$1: ; 1 args
	sourceline 2628
	thisaddr 62530
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2629
	ptrstack 12
	memread4 ax
	push ax
	li ax, 55
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, _StopTweensForGUIControlOfType$3
	call ax
	subi sp, 12
	sourceline 2630
	li ax, 0
	subi sp, 4
	ret 

TextBox::TweenTextColorRed$6: ; 6 args
	sourceline 2632
	thisaddr 62582
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2633
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2634
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2635
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 52
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2636
	li ax, 0
	subi sp, 8
	ret 

TextBox::TweenTextColorGreen$6: ; 6 args
	sourceline 2637
	thisaddr 62754
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2638
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2639
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2640
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 53
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2641
	li ax, 0
	subi sp, 8
	ret 

TextBox::TweenTextColorBlue$6: ; 6 args
	sourceline 2642
	thisaddr 62926
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2643
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_TextColor
	farcall ax
	pop op
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2644
	li ax, 255
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2645
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, 54
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 8
	ret 
	sourceline 2646
	li ax, 0
	subi sp, 8
	ret 

TextBox::TweenTextColorRGB$8: ; 8 args
	sourceline 2647
	thisaddr 63098
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2648
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::TweenTextColorRed$6
	call ax
	subi sp, 24
	pop op
	sourceline 2649
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 920
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::TweenTextColorGreen$6
	call ax
	subi sp, 24
	pop op
	sourceline 2650
	push op
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::TweenTextColorBlue$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2651
	li ax, 0
	subi sp, 4
	ret 

TextBox::TweenTextColor$6: ; 6 args
	sourceline 2652
	thisaddr 63299
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2653
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	ptrstack 16
	memwrite4 ax
	sourceline 2654
	ptrstack 16
	memread4 ax
	push ax
	li ax, TweenGame::GetRFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2655
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenGame::GetGFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2656
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenGame::GetBFromColor$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 2657
	push op
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	push ax
	ptrstack 56
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, TextBox::TweenTextColorRGB$8
	call ax
	subi sp, 32
	pop op
	subi sp, 16
	ret 
	sourceline 2658
	li ax, 0
	subi sp, 16
	ret 

Slider::TweenHandleOffset$6: ; 6 args
	sourceline 2660
	thisaddr 63493
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2661
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_HandleOffset
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 55
	push ax
	li ax, _StartGUIControlTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2662
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::StopTweenPosition$1: ; 1 args
	sourceline 2666
	thisaddr 63611
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2667
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_ID
	farcall ax
	pop op
	push ax
	li ax, 69
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2668
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::StopTweenPanning$1: ; 1 args
	sourceline 2669
	thisaddr 63676
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2670
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_ID
	farcall ax
	pop op
	push ax
	li ax, 68
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2671
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::StopTweenVolume$1: ; 1 args
	sourceline 2672
	thisaddr 63741
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2673
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_ID
	farcall ax
	pop op
	push ax
	li ax, 65
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2674
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::StopTweenRoomLocation$1: ; 1 args
	sourceline 2675
	thisaddr 63806
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2676
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_ID
	farcall ax
	pop op
	push ax
	li ax, 67
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2677
	li ax, 0
	subi sp, 4
	ret 

_StartAudioTween$11: ; 11 args
	sourceline 2680
	thisaddr 63871
	ptrstack 12
	memread4 ax
	ptrinit ax
	sourceline 2681
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 36
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_ID
	farcall ax
	pop op
	push ax
	li ax, 7
	push ax
	ptrstack 64
	memread4 ax
	push ax
	ptrstack 64
	memread4 ax
	push ax
	ptrstack 64
	memread4 ax
	push ax
	ptrstack 64
	memread4 ax
	push ax
	ptrstack 64
	memread4 ax
	push ax
	ptrstack 60
	memread4 ax
	push ax
	li ax, _StartTween$14
	call ax
	subi sp, 56
	ptrstack 12
	ptrzerond 
	ret 
	sourceline 2682
	li ax, 0
	ptrstack 12
	ptrzerond 
	ret 

AudioChannel::TweenPosition$6: ; 6 args
	sourceline 2683
	thisaddr 64009
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2684
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_PositionMs
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_LengthMs
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push ax
	ptrstack 44
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 69
	push ax
	li ax, _StartAudioTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2685
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::TweenPanning$6: ; 6 args
	sourceline 2686
	thisaddr 64164
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2687
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_Panning
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push ax
	ptrstack 44
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 68
	push ax
	li ax, _StartAudioTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2688
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::TweenVolume$6: ; 6 args
	sourceline 2689
	thisaddr 64302
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2690
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_Volume
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push ax
	ptrstack 44
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 66
	push ax
	li ax, _StartAudioTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2691
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::TweenFadeOut$5: ; 5 args
	sourceline 2692
	thisaddr 64440
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2693
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, AudioChannel::TweenVolume$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2694
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::TweenFadeIn$5: ; 5 args
	sourceline 2695
	thisaddr 64524
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2696
	push op
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 100
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, AudioChannel::TweenVolume$6
	call ax
	subi sp, 24
	pop op
	subi sp, 4
	ret 
	sourceline 2697
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::TweenRoomLocation$9: ; 9 args
	sourceline 2698
	thisaddr 64608
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2699
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 67
	push ax
	li ax, _StartAudioTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2700
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::StopAllTweens$1: ; 1 args
	sourceline 2701
	thisaddr 64712
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2702
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_ID
	farcall ax
	pop op
	push ax
	li ax, 7
	push ax
	li ax, _StopTweens$3
	call ax
	subi sp, 12
	sourceline 2703
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::StopTweenSpeed$1: ; 1 args
	sourceline 2708
	thisaddr 64777
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2709
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_ID
	farcall ax
	pop op
	push ax
	li ax, 70
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2710
	li ax, 0
	subi sp, 4
	ret 

AudioChannel::TweenSpeed$6: ; 6 args
	sourceline 2711
	thisaddr 64842
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2712
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_Speed
	farcall ax
	pop op
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, TweenMaths::MaxInt$2
	call ax
	subi sp, 8
	push ax
	ptrstack 44
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 70
	push ax
	li ax, _StartAudioTween$11
	call ax
	subi sp, 44
	sourceline 2713
	li ax, 0
	subi sp, 4
	ret 

System::TweenVolume$6: ; 6 args
	sourceline 2715
	thisaddr 64971
	sourceline 2716
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	li ax, 0
	setfuncargs 0
	li ax, System::get_Volume
	farcall ax
	push ax
	li ax, 0
	push ax
	li ax, 100
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 65
	push ax
	li ax, _StartMiscTween$11
	call ax
	subi sp, 44
	ret 
	sourceline 2717
	li ax, 0
	ret 

System::StopTweenVolume$1: ; 1 args
	sourceline 2718
	thisaddr 65080
	sourceline 2719
	ptrstack 8
	memread4 ax
	push ax
	li ax, 65
	push ax
	li ax, _StopTweensOfType$2
	call ax
	subi sp, 8
	sourceline 2720
	li ax, 0
	ret 

TweenAmbientLightLevel$7: ; 7 args
	sourceline 2723
	thisaddr 65111
	sourceline 2724
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 20
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 12
	memwrite4 ax
	sourceline 2725
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2726
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	ptrstack 36
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 56
	push ax
	li ax, _StartMiscTween$11
	call ax
	subi sp, 44
	ret 
	sourceline 2727
	li ax, 0
	ret 

StopTweenAmbientLightLevel$1: ; 1 args
	sourceline 2728
	thisaddr 65254
	sourceline 2729
	ptrstack 8
	memread4 ax
	push ax
	li ax, 56
	push ax
	li ax, _StopTweensOfType$2
	call ax
	subi sp, 8
	sourceline 2730
	li ax, 0
	ret 

System::TweenGamma$6: ; 6 args
	sourceline 2732
	thisaddr 65285
	sourceline 2733
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, 0
	push ax
	li ax, 0
	push ax
	li ax, 0
	setfuncargs 0
	li ax, System::get_Gamma
	farcall ax
	push ax
	li ax, 0
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 48
	push ax
	li ax, _StartMiscTween$11
	call ax
	subi sp, 44
	ret 
	sourceline 2734
	li ax, 0
	ret 

System::StopTweenGamma$1: ; 1 args
	sourceline 2735
	thisaddr 65374
	sourceline 2736
	ptrstack 8
	memread4 ax
	push ax
	li ax, 48
	push ax
	li ax, _StopTweensOfType$2
	call ax
	subi sp, 8
	sourceline 2737
	li ax, 0
	ret 

Character::TweenLightLevel$7: ; 7 args
	sourceline 2739
	thisaddr 65405
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2740
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2741
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2742
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 57
	push ax
	li ax, _StartCharacterTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2743
	li ax, 0
	subi sp, 4
	ret 

Object::TweenLightLevel$7: ; 7 args
	sourceline 2744
	thisaddr 65567
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2745
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 16
	memwrite4 ax
	sourceline 2746
	li ax, 100
	push ax
	li ax, -100
	push ax
	ptrstack 28
	memread4 ax
	push ax
	li ax, TweenMaths::ClampInt$3
	call ax
	subi sp, 12
	ptrstack 20
	memwrite4 ax
	sourceline 2747
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	li ax, 0
	push ax
	ptrstack 40
	memread4 ax
	push ax
	li ax, 0
	push ax
	ptrstack 52
	memread4 ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 61
	push ax
	li ax, _StartObjectTween$11
	call ax
	subi sp, 44
	subi sp, 4
	ret 
	sourceline 2748
	li ax, 0
	subi sp, 4
	ret 

Character::StopTweenLightLevel$1: ; 1 args
	sourceline 2749
	thisaddr 65729
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2750
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 57
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2751
	li ax, 0
	subi sp, 4
	ret 

Object::StopTweenLightLevel$1: ; 1 args
	sourceline 2752
	thisaddr 65794
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2753
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 61
	push ax
	li ax, _StopTweensOfTypeWithReference$3
	call ax
	subi sp, 12
	sourceline 2754
	li ax, 0
	subi sp, 4
	ret 

Character::TweenProperty$7: ; 7 args
	sourceline 2758
	thisaddr 65859
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2759
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 3
	push ax
	push op
	ptrstack 44
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::GetProperty^1
	farcall ax
	farsubsp 1
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 58
	push ax
	li ax, _StartPropertyTween$11
	call ax
	subi sp, 44
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 2763
	li ax, 0
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 

Character::StopTweenProperty$2: ; 2 args
	sourceline 2764
	thisaddr 66021
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2765
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_ID
	farcall ax
	pop op
	push ax
	li ax, 58
	push ax
	li ax, _StopTweensOfTypeWithStringReference$4
	call ax
	subi sp, 16
	sourceline 2766
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

Hotspot::TweenProperty$7: ; 7 args
	sourceline 2770
	thisaddr 66105
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2771
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Hotspot::get_ID
	farcall ax
	pop op
	push ax
	li ax, 6
	push ax
	push op
	ptrstack 44
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Hotspot::GetProperty^1
	farcall ax
	farsubsp 1
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 59
	push ax
	li ax, _StartPropertyTween$11
	call ax
	subi sp, 44
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 2775
	li ax, 0
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 

Hotspot::StopTweenProperty$2: ; 2 args
	sourceline 2776
	thisaddr 66267
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2777
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Hotspot::get_ID
	farcall ax
	pop op
	push ax
	li ax, 59
	push ax
	li ax, _StopTweensOfTypeWithStringReference$4
	call ax
	subi sp, 16
	sourceline 2778
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

InventoryItem::TweenProperty$7: ; 7 args
	sourceline 2782
	thisaddr 66351
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2783
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, InventoryItem::get_ID
	farcall ax
	pop op
	push ax
	li ax, 8
	push ax
	push op
	ptrstack 44
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, InventoryItem::GetProperty^1
	farcall ax
	farsubsp 1
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 60
	push ax
	li ax, _StartPropertyTween$11
	call ax
	subi sp, 44
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 2787
	li ax, 0
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 

InventoryItem::StopTweenProperty$2: ; 2 args
	sourceline 2788
	thisaddr 66513
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2789
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, InventoryItem::get_ID
	farcall ax
	pop op
	push ax
	li ax, 8
	push ax
	li ax, _StopTweensOfTypeWithStringReference$4
	call ax
	subi sp, 16
	sourceline 2790
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

Object::TweenProperty$7: ; 7 args
	sourceline 2794
	thisaddr 66597
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2795
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 2
	push ax
	push op
	ptrstack 44
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Object::GetProperty^1
	farcall ax
	farsubsp 1
	pop op
	push ax
	ptrstack 48
	memread4 ax
	push ax
	ptrstack 48
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 48
	memread4 ax
	push ax
	li ax, 62
	push ax
	li ax, _StartPropertyTween$11
	call ax
	subi sp, 44
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 2799
	li ax, 0
	ptrstack 16
	ptrzerond 
	subi sp, 4
	ret 

Object::StopTweenProperty$2: ; 2 args
	sourceline 2800
	thisaddr 66759
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 2801
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_ID
	farcall ax
	pop op
	push ax
	li ax, 62
	push ax
	li ax, _StopTweensOfTypeWithStringReference$4
	call ax
	subi sp, 16
	sourceline 2802
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

Room::TweenProperty$7: ; 7 args
	sourceline 2806
	thisaddr 66843
	ptrstack 12
	memread4 ax
	ptrinit ax
	sourceline 2807
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	ptrstack 32
	memread4 ax
	push ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Room
	farcall ax
	pop op
	push ax
	li ax, 6
	push ax
	ptrstack 36
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	setfuncargs 1
	li ax, Room::GetProperty^1
	farcall ax
	farsubsp 1
	push ax
	ptrstack 44
	memread4 ax
	push ax
	ptrstack 44
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 44
	memread4 ax
	push ax
	li ax, 64
	push ax
	li ax, _StartPropertyTween$11
	call ax
	subi sp, 44
	ptrstack 12
	ptrzerond 
	ret 
	sourceline 2811
	li ax, 0
	ptrstack 12
	ptrzerond 
	ret 

Room::StopTweenProperty$2: ; 2 args
	sourceline 2812
	thisaddr 66986
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 2813
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	push ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Room
	farcall ax
	pop op
	push ax
	li ax, 64
	push ax
	li ax, _StopTweensOfTypeWithStringReference$4
	call ax
	subi sp, 16
	sourceline 2814
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 
.strings
"__NEWSCRIPTSTART__BuiltInScriptHeader.ash"
"__NEWSCRIPTSTART__AutoGenerated.ash"
"__NEWSCRIPTSTART__GlobalVariables.ash"
"__NEWSCRIPTSTART_Sink Shit.ash"
"__NEWSCRIPTSTART_Clarissa\'s Moods.ash"
"__NEWSCRIPTSTART_Google It.ash"
"__NEWSCRIPTSTART_CustomDialogGui.ash"
"__NEWSCRIPTSTART_IniFile.ash"
"__NEWSCRIPTSTART_CountDown.ash"
"__NEWSCRIPTSTART_tween.ash"
"__NEWSCRIPTSTART_tween.asc"
.imports
000000000000""
000000000001""
000000000002""
000000000003""
000000000004""
000000000005""
000000000006""
000000000007""
000000000008""
000000000009""
000000000010""
000000000011""
000000000012""
000000000013""
000000000014""
000000000015""
000000000016""
000000000017""
000000000018""
000000000019""
000000000020""
000000000021""
000000000022""
000000000023""
000000000024""
000000000025""
000000000026""
000000000027""
000000000028""
000000000029""
000000000030""
000000000031""
000000000032""
000000000033""
000000000034""
000000000035""
000000000036""
000000000037""
000000000038""
000000000039""
000000000040""
000000000041""
000000000042""
000000000043""
000000000044""
000000000045""
000000000046""
000000000047""
000000000048""
000000000049""
000000000050""
000000000051""
000000000052""
000000000053""
000000000054""
000000000055""
000000000056""
000000000057""
000000000058""
000000000059""
000000000060""
000000000061""
000000000062""
000000000063""
000000000064""
000000000065""
000000000066""
000000000067""
000000000068""
000000000069""
000000000070""
000000000071""
000000000072""
000000000073"Room::get_Height"
000000000074""
000000000075""
000000000076""
000000000077""
000000000078""
000000000079""
000000000080"Room::get_Width"
000000000081"Room::GetProperty^1"
000000000082"Room::SetProperty^2"
000000000083""
000000000084""
000000000085""
000000000086""
000000000087""
000000000088""
000000000089""
000000000090""
000000000091""
000000000092""
000000000093""
000000000094""
000000000095""
000000000096""
000000000097""
000000000098""
000000000099""
000000000100""
000000000101"SetGameSpeed"
000000000102"GetGameSpeed"
000000000103""
000000000104""
000000000105""
000000000106""
000000000107""
000000000108""
000000000109""
000000000110""
000000000111""
000000000112""
000000000113""
000000000114""
000000000115""
000000000116""
000000000117""
000000000118""
000000000119""
000000000120""
000000000121""
000000000122""
000000000123""
000000000124""
000000000125""
000000000126""
000000000127""
000000000128""
000000000129""
000000000130""
000000000131""
000000000132""
000000000133""
000000000134""
000000000135""
000000000136""
000000000137""
000000000138""
000000000139""
000000000140""
000000000141""
000000000142""
000000000143""
000000000144""
000000000145""
000000000146""
000000000147""
000000000148""
000000000149""
000000000150""
000000000151""
000000000152""
000000000153""
000000000154""
000000000155""
000000000156""
000000000157""
000000000158""
000000000159""
000000000160""
000000000161""
000000000162""
000000000163""
000000000164""
000000000165"SetTimer"
000000000166""
000000000167""
000000000168"FloatToInt"
000000000169"IntToFloat"
000000000170""
000000000171""
000000000172""
000000000173""
000000000174""
000000000175""
000000000176""
000000000177""
000000000178""
000000000179""
000000000180""
000000000181""
000000000182""
000000000183""
000000000184""
000000000185""
000000000186""
000000000187""
000000000188""
000000000189"InventoryItem::GetProperty^1"
000000000190""
000000000191""
000000000192""
000000000193""
000000000194""
000000000195""
000000000196""
000000000197"InventoryItem::get_ID"
000000000198""
000000000199""
000000000200"InventoryItem::SetProperty^2"
000000000201""
000000000202""
000000000203""
000000000204""
000000000205""
000000000206""
000000000207""
000000000208""
000000000209""
000000000210""
000000000211""
000000000212""
000000000213""
000000000214""
000000000215""
000000000216""
000000000217""
000000000218""
000000000219""
000000000220""
000000000221""
000000000222""
000000000223""
000000000224""
000000000225""
000000000226""
000000000227""
000000000228""
000000000229""
000000000230""
000000000231""
000000000232""
000000000233""
000000000234""
000000000235""
000000000236""
000000000237""
000000000238""
000000000239""
000000000240""
000000000241""
000000000242""
000000000243""
000000000244""
000000000245""
000000000246""
000000000247""
000000000248""
000000000249""
000000000250""
000000000251""
000000000252""
000000000253""
000000000254""
000000000255""
000000000256""
000000000257""
000000000258"ShakeScreenBackground"
000000000259""
000000000260""
000000000261""
000000000262""
000000000263""
000000000264""
000000000265"SetAreaScaling"
000000000266""
000000000267""
000000000268""
000000000269""
000000000270""
000000000271""
000000000272"SetAmbientLightLevel"
000000000273""
000000000274"SetSpeechVolume"
000000000275""
000000000276""
000000000277""
000000000278""
000000000279"Wait"
000000000280""
000000000281""
000000000282""
000000000283""
000000000284""
000000000285""
000000000286""
000000000287""
000000000288""
000000000289""
000000000290""
000000000291""
000000000292""
000000000293""
000000000294""
000000000295""
000000000296""
000000000297""
000000000298""
000000000299"GUIControl::SetPosition^2"
000000000300"GUIControl::SetSize^2"
000000000301"GUIControl::get_AsButton"
000000000302"GUIControl::get_AsInvWindow"
000000000303"GUIControl::get_AsLabel"
000000000304"GUIControl::get_AsListBox"
000000000305"GUIControl::get_AsSlider"
000000000306"GUIControl::get_AsTextBox"
000000000307""
000000000308""
000000000309""
000000000310""
000000000311"GUIControl::get_Height"
000000000312"GUIControl::set_Height"
000000000313"GUIControl::get_ID"
000000000314""
000000000315""
000000000316""
000000000317"GUIControl::get_Width"
000000000318"GUIControl::set_Width"
000000000319"GUIControl::get_X"
000000000320"GUIControl::set_X"
000000000321"GUIControl::get_Y"
000000000322"GUIControl::set_Y"
000000000323""
000000000324""
000000000325""
000000000326""
000000000327""
000000000328""
000000000329""
000000000330""
000000000331"Label::get_TextColor"
000000000332"Label::set_TextColor"
000000000333""
000000000334""
000000000335""
000000000336""
000000000337""
000000000338""
000000000339""
000000000340""
000000000341""
000000000342""
000000000343""
000000000344""
000000000345""
000000000346""
000000000347"Button::get_TextColor"
000000000348"Button::set_TextColor"
000000000349""
000000000350""
000000000351""
000000000352""
000000000353""
000000000354""
000000000355""
000000000356""
000000000357""
000000000358""
000000000359""
000000000360""
000000000361""
000000000362"Slider::get_HandleOffset"
000000000363"Slider::set_HandleOffset"
000000000364"Slider::get_Max"
000000000365"Slider::set_Max"
000000000366"Slider::get_Min"
000000000367"Slider::set_Min"
000000000368"Slider::get_Value"
000000000369"Slider::set_Value"
000000000370""
000000000371""
000000000372""
000000000373""
000000000374"TextBox::get_TextColor"
000000000375"TextBox::set_TextColor"
000000000376""
000000000377""
000000000378""
000000000379""
000000000380""
000000000381""
000000000382""
000000000383"InvWindow::get_ItemCount"
000000000384""
000000000385""
000000000386""
000000000387""
000000000388"InvWindow::get_TopItem"
000000000389"InvWindow::set_TopItem"
000000000390""
000000000391""
000000000392""
000000000393""
000000000394""
000000000395""
000000000396""
000000000397""
000000000398""
000000000399""
000000000400""
000000000401""
000000000402""
000000000403"ListBox::get_ItemCount"
000000000404""
000000000405""
000000000406""
000000000407""
000000000408"ListBox::get_SelectedIndex"
000000000409"ListBox::set_SelectedIndex"
000000000410"ListBox::get_TopItem"
000000000411"ListBox::set_TopItem"
000000000412""
000000000413""
000000000414""
000000000415""
000000000416"ListBox::get_SelectedBackColor"
000000000417"ListBox::set_SelectedBackColor"
000000000418"ListBox::get_SelectedTextColor"
000000000419"ListBox::set_SelectedTextColor"
000000000420""
000000000421""
000000000422"ListBox::get_TextColor"
000000000423"ListBox::set_TextColor"
000000000424""
000000000425""
000000000426"GUI::SetPosition^2"
000000000427"GUI::SetSize^2"
000000000428""
000000000429""
000000000430""
000000000431""
000000000432""
000000000433""
000000000434"GUI::get_Height"
000000000435"GUI::set_Height"
000000000436"GUI::get_ID"
000000000437"GUI::get_Transparency"
000000000438"GUI::set_Transparency"
000000000439"GUI::get_Visible"
000000000440"GUI::set_Visible"
000000000441"GUI::get_Width"
000000000442"GUI::set_Width"
000000000443"GUI::get_X"
000000000444"GUI::set_X"
000000000445"GUI::get_Y"
000000000446"GUI::set_Y"
000000000447"GUI::get_ZOrder"
000000000448"GUI::set_ZOrder"
000000000449""
000000000450""
000000000451"GUI::get_BackgroundColor"
000000000452"GUI::set_BackgroundColor"
000000000453"GUI::get_BorderColor"
000000000454"GUI::set_BorderColor"
000000000455""
000000000456""
000000000457""
000000000458""
000000000459""
000000000460""
000000000461""
000000000462""
000000000463""
000000000464""
000000000465"Hotspot::GetProperty^1"
000000000466""
000000000467""
000000000468""
000000000469""
000000000470"Hotspot::get_ID"
000000000471""
000000000472""
000000000473""
000000000474""
000000000475""
000000000476"Hotspot::SetProperty^2"
000000000477""
000000000478""
000000000479""
000000000480""
000000000481""
000000000482"Region::Tint^5"
000000000483""
000000000484""
000000000485"Region::get_ID"
000000000486"Region::get_LightLevel"
000000000487"Region::set_LightLevel"
000000000488""
000000000489"Region::get_TintBlue"
000000000490"Region::get_TintGreen"
000000000491"Region::get_TintRed"
000000000492"Region::get_TintSaturation"
000000000493"Region::get_TintLuminance"
000000000494""
000000000495""
000000000496""
000000000497""
000000000498""
000000000499""
000000000500""
000000000501""
000000000502""
000000000503""
000000000504""
000000000505""
000000000506""
000000000507""
000000000508""
000000000509""
000000000510"Maths::Cos^1"
000000000511""
000000000512""
000000000513""
000000000514""
000000000515""
000000000516""
000000000517"Maths::RaiseToPower^2"
000000000518"Maths::Sin^1"
000000000519""
000000000520"Maths::Sqrt^1"
000000000521""
000000000522""
000000000523"Maths::get_Pi"
000000000524""
000000000525""
000000000526""
000000000527""
000000000528""
000000000529""
000000000530""
000000000531""
000000000532""
000000000533""
000000000534""
000000000535""
000000000536""
000000000537""
000000000538""
000000000539""
000000000540""
000000000541""
000000000542""
000000000543""
000000000544""
000000000545""
000000000546""
000000000547""
000000000548""
000000000549""
000000000550""
000000000551""
000000000552""
000000000553""
000000000554"AudioChannel::Seek^1"
000000000555"AudioChannel::SetRoomLocation^2"
000000000556""
000000000557"AudioChannel::get_ID"
000000000558""
000000000559"AudioChannel::get_LengthMs"
000000000560"AudioChannel::get_Panning"
000000000561"AudioChannel::set_Panning"
000000000562""
000000000563""
000000000564"AudioChannel::get_PositionMs"
000000000565"AudioChannel::get_Volume"
000000000566"AudioChannel::set_Volume"
000000000567"AudioChannel::get_Speed"
000000000568"AudioChannel::set_Speed"
000000000569""
000000000570""
000000000571""
000000000572""
000000000573""
000000000574""
000000000575""
000000000576""
000000000577""
000000000578""
000000000579""
000000000580""
000000000581""
000000000582""
000000000583"System::geti_AudioChannels"
000000000584""
000000000585""
000000000586"System::get_Gamma"
000000000587"System::set_Gamma"
000000000588""
000000000589""
000000000590""
000000000591""
000000000592""
000000000593""
000000000594"System::get_Volume"
000000000595"System::set_Volume"
000000000596""
000000000597""
000000000598""
000000000599""
000000000600""
000000000601""
000000000602""
000000000603""
000000000604""
000000000605""
000000000606""
000000000607""
000000000608"Object::GetProperty^1"
000000000609""
000000000610""
000000000611""
000000000612""
000000000613""
000000000614""
000000000615"Object::SetPosition^2"
000000000616""
000000000617""
000000000618""
000000000619"Object::Tint^5"
000000000620""
000000000621""
000000000622""
000000000623""
000000000624""
000000000625""
000000000626""
000000000627""
000000000628""
000000000629""
000000000630"Object::get_Graphic"
000000000631"Object::set_Graphic"
000000000632"Object::get_ID"
000000000633""
000000000634""
000000000635""
000000000636""
000000000637""
000000000638""
000000000639"Object::get_Transparency"
000000000640"Object::set_Transparency"
000000000641""
000000000642"Object::get_Visible"
000000000643"Object::set_Visible"
000000000644"Object::get_X"
000000000645"Object::set_X"
000000000646"Object::get_Y"
000000000647"Object::set_Y"
000000000648""
000000000649"Object::SetLightLevel^1"
000000000650"Object::SetProperty^2"
000000000651""
000000000652""
000000000653""
000000000654""
000000000655"Object::get_TintBlue"
000000000656"Object::get_TintGreen"
000000000657"Object::get_TintRed"
000000000658"Object::get_TintSaturation"
000000000659"Object::get_TintLuminance"
000000000660""
000000000661""
000000000662""
000000000663""
000000000664""
000000000665""
000000000666""
000000000667""
000000000668""
000000000669""
000000000670""
000000000671""
000000000672""
000000000673""
000000000674""
000000000675""
000000000676"Character::GetProperty^1"
000000000677""
000000000678""
000000000679""
000000000680""
000000000681""
000000000682""
000000000683""
000000000684""
000000000685""
000000000686""
000000000687""
000000000688""
000000000689""
000000000690""
000000000691""
000000000692""
000000000693""
000000000694""
000000000695""
000000000696""
000000000697""
000000000698"Character::Tint^5"
000000000699""
000000000700""
000000000701""
000000000702""
000000000703""
000000000704""
000000000705"Character::get_AnimationSpeed"
000000000706"Character::set_AnimationSpeed"
000000000707""
000000000708""
000000000709""
000000000710""
000000000711""
000000000712""
000000000713""
000000000714""
000000000715""
000000000716""
000000000717""
000000000718""
000000000719""
000000000720""
000000000721""
000000000722""
000000000723""
000000000724""
000000000725""
000000000726"Character::get_ID"
000000000727""
000000000728""
000000000729""
000000000730""
000000000731""
000000000732""
000000000733""
000000000734""
000000000735""
000000000736"Character::get_ManualScaling"
000000000737"Character::set_ManualScaling"
000000000738""
000000000739""
000000000740""
000000000741""
000000000742""
000000000743""
000000000744""
000000000745"Character::get_Room"
000000000746""
000000000747""
000000000748""
000000000749""
000000000750"Character::get_Scaling"
000000000751"Character::set_Scaling"
000000000752""
000000000753""
000000000754""
000000000755""
000000000756""
000000000757""
000000000758""
000000000759""
000000000760""
000000000761""
000000000762""
000000000763""
000000000764"Character::get_Transparency"
000000000765"Character::set_Transparency"
000000000766""
000000000767""
000000000768""
000000000769""
000000000770""
000000000771""
000000000772""
000000000773""
000000000774"Character::SetProperty^2"
000000000775""
000000000776""
000000000777"Character::SetLightLevel^1"
000000000778""
000000000779""
000000000780""
000000000781""
000000000782"Character::get_TintBlue"
000000000783"Character::get_TintGreen"
000000000784"Character::get_TintRed"
000000000785"Character::get_TintSaturation"
000000000786"Character::get_TintLuminance"
000000000787""
000000000788""
000000000789""
000000000790""
000000000791""
000000000792"Character::get_x"
000000000793"Character::set_x"
000000000794"Character::get_y"
000000000795"Character::set_y"
000000000796"Character::get_z"
000000000797"Character::set_z"
000000000798""
000000000799""
000000000800"Game::GetColorFromRGB^3"
000000000801""
000000000802""
000000000803""
000000000804""
000000000805""
000000000806""
000000000807""
000000000808""
000000000809""
000000000810""
000000000811""
000000000812""
000000000813""
000000000814""
000000000815""
000000000816""
000000000817""
000000000818""
000000000819""
000000000820""
000000000821""
000000000822""
000000000823""
000000000824""
000000000825""
000000000826""
000000000827""
000000000828""
000000000829""
000000000830""
000000000831""
000000000832""
000000000833"Game::get_SkippingCutscene"
000000000834""
000000000835""
000000000836""
000000000837""
000000000838""
000000000839""
000000000840""
000000000841""
000000000842""
000000000843""
000000000844""
000000000845""
000000000846""
000000000847""
000000000848""
000000000849"Game::geti_Cameras"
000000000850"Game::get_CameraCount"
000000000851""
000000000852""
000000000853""
000000000854""
000000000855""
000000000856""
000000000857""
000000000858""
000000000859""
000000000860""
000000000861""
000000000862""
000000000863""
000000000864""
000000000865""
000000000866""
000000000867""
000000000868""
000000000869""
000000000870""
000000000871""
000000000872""
000000000873""
000000000874""
000000000875""
000000000876""
000000000877""
000000000878""
000000000879""
000000000880"Camera::get_X"
000000000881"Camera::set_X"
000000000882"Camera::get_Y"
000000000883"Camera::set_Y"
000000000884"Camera::get_Width"
000000000885"Camera::set_Width"
000000000886"Camera::get_Height"
000000000887"Camera::set_Height"
000000000888""
000000000889""
000000000890""
000000000891""
000000000892""
000000000893""
000000000894"Viewport::get_X"
000000000895"Viewport::set_X"
000000000896"Viewport::get_Y"
000000000897"Viewport::set_Y"
000000000898"Viewport::get_Width"
000000000899"Viewport::set_Width"
000000000900"Viewport::get_Height"
000000000901"Viewport::set_Height"
000000000902""
000000000903""
000000000904""
000000000905""
000000000906""
000000000907""
000000000908""
000000000909""
000000000910""
000000000911""
000000000912""
000000000913""
000000000914"Screen::get_Width"
000000000915"Screen::get_Height"
000000000916""
000000000917""
000000000918""
000000000919"Screen::geti_Viewports"
000000000920"Screen::get_ViewportCount"
000000000921""
000000000922""
000000000923"player"
000000000924""
000000000925""
000000000926"object"
000000000927"hotspot"
000000000928"region"
000000000929""
000000000930""
000000000931""
000000000932"character"
000000000933""
000000000934""
000000000935""
000000000936""
000000000937""
000000000938""
000000000939""
000000000940""
000000000941""
000000000942""
000000000943""
000000000944""
000000000945""
000000000946""
000000000947""
000000000948""
000000000949""
000000000950""
000000000951""
000000000952""
000000000953""
000000000954""
000000000955""
000000000956""
000000000957""
000000000958""
000000000959""
000000000960""
000000000961""
000000000962""
000000000963""
000000000964""
000000000965""
000000000966""
000000000967""
000000000968""
000000000969""
000000000970""
000000000971""
000000000972""
000000000973""
000000000974""
000000000975""
000000000976""
000000000977""
000000000978""
000000000979""
000000000980""
000000000981""
000000000982""
000000000983""
000000000984""
000000000985""
000000000986""
000000000987""
000000000988""
000000000989""
000000000990"inventory"
000000000991""
000000000992""
000000000993""
000000000994""
000000000995""
000000000996""
000000000997""
000000000998""
000000000999""
000000001000""
000000001001""
000000001002""
000000001003""
000000001004""
000000001005""
000000001006""
000000001007""
000000001008""
000000001009""
000000001010""
000000001011""
000000001012""
000000001013""
000000001014""
000000001015""
000000001016""
000000001017""
000000001018""
000000001019""
000000001020""
000000001021""
000000001022""
000000001023""
000000001024""
000000001025""
000000001026""
000000001027""
000000001028""
000000001029""
000000001030""
000000001031"gui"
000000001032""
000000001033""
000000001034""
000000001035""
000000001036""
000000001037""
000000001038""
000000001039""
000000001040""
000000001041""
000000001042""
000000001043""
000000001044""
000000001045""
000000001046""
000000001047""
000000001048""
000000001049""
000000001050""
000000001051""
000000001052""
000000001053""
000000001054""
000000001055""
000000001056""
000000001057""
000000001058""
000000001059""
000000001060""
000000001061""
000000001062""
000000001063""
000000001064""
000000001065""
000000001066""
000000001067""
000000001068""
000000001069""
000000001070""
000000001071""
000000001072""
000000001073""
000000001074""
000000001075""
000000001076""
000000001077""
000000001078""
000000001079""
000000001080""
000000001081""
000000001082""
000000001083""
000000001084""
000000001085""
000000001086""
000000001087""
000000001088""
000000001089""
000000001090""
000000001091""
000000001092""
000000001093""
000000001094""
000000001095""
000000001096""
000000001097""
000000001098""
000000001099""
000000001100""
000000001101""
000000001102""
000000001103""
000000001104""
000000001105""
000000001106""
000000001107""
000000001108""
000000001109""
000000001110""
000000001111""
000000001112""
000000001113""
000000001114""
000000001115""
000000001116""
000000001117""
000000001118""
000000001119""
000000001120""
000000001121""
000000001122""
000000001123""
000000001124""
000000001125""
000000001126""
000000001127""
000000001128""
000000001129""
000000001130""
000000001131""
000000001132""
000000001133""
000000001134""
000000001135""
000000001136""
000000001137""
000000001138""
000000001139""
000000001140""
000000001141""
000000001142""
000000001143""
000000001144""
000000001145""
000000001146""
000000001147""
000000001148""
000000001149""
000000001150""
000000001151""
000000001152""
000000001153""
000000001154""
000000001155""
000000001156""
000000001157""
000000001158""
000000001159""
000000001160""
000000001161""
000000001162""
000000001163""
000000001164""
000000001165""
000000001166""
000000001167""
000000001168""
000000001169""
000000001170""
000000001171""
000000001172""
000000001173""
000000001174""
000000001175""
000000001176""
000000001177""
000000001178""
000000001179""
000000001180""
000000001181""
000000001182""
000000001183""
000000001184""
000000001185""
000000001186""
000000001187""
000000001188""
000000001189""
000000001190""
000000001191""
000000001192""
000000001193""
000000001194""
000000001195""
000000001196""
000000001197""
000000001198""
000000001199""
000000001200""
000000001201""
000000001202""
000000001203""
000000001204""
000000001205""
000000001206""
000000001207""
000000001208""
000000001209""
000000001210""
000000001211""
000000001212""
000000001213""
000000001214""
000000001215""
000000001216""
000000001217""
000000001218""
000000001219""
000000001220""
000000001221""
000000001222""
000000001223""
000000001224""
000000001225""
000000001226""
000000001227""
000000001228""
000000001229""
000000001230""
000000001231""
000000001232""
000000001233""
000000001234""
000000001235""
000000001236""
000000001237""
000000001238""
000000001239""
000000001240""
000000001241""
000000001242""
000000001243""
000000001244""
000000001245""
000000001246""
000000001247""
000000001248""
000000001249""
000000001250""
000000001251""
000000001252""
000000001253""
000000001254""
000000001255""
000000001256""
000000001257""
000000001258""
000000001259""
000000001260""
000000001261""
000000001262""
000000001263""
000000001264""
000000001265""
000000001266""
000000001267""
000000001268""
000000001269""
000000001270""
000000001271""
000000001272""
000000001273""
000000001274""
000000001275""
000000001276""
000000001277""
000000001278""
000000001279""
000000001280""
000000001281""
000000001282""
000000001283""
000000001284""
000000001285""
000000001286""
000000001287""
000000001288""
000000001289""
000000001290""
000000001291""
000000001292""
000000001293""
000000001294""
000000001295""
000000001296""
000000001297""
000000001298""
000000001299""
000000001300""
000000001301""
000000001302""
000000001303""
000000001304""
000000001305""
000000001306""
000000001307""
000000001308""
000000001309""
000000001310""
000000001311""
000000001312""
000000001313""
000000001314""
000000001315""
000000001316""
000000001317""
000000001318""
000000001319""
000000001320""
000000001321""
000000001322""
000000001323""
000000001324""
000000001325""
000000001326""
000000001327""
000000001328""
000000001329""
000000001330""
000000001331""
000000001332""
000000001333""
000000001334""
000000001335""
000000001336""
000000001337""
000000001338""
000000001339""
000000001340""
000000001341""
000000001342""
000000001343""
000000001344""
000000001345""
000000001346""
000000001347""
000000001348""
000000001349""
000000001350""
000000001351""
000000001352""
000000001353""
000000001354""
000000001355""
000000001356""
000000001357""
000000001358""
000000001359""
000000001360""
000000001361""
000000001362""
000000001363""
000000001364""
000000001365""
000000001366""
000000001367""
000000001368""
000000001369""
000000001370""
000000001371""
000000001372""
000000001373""
000000001374""
000000001375""
000000001376""
000000001377""
000000001378""
000000001379""
000000001380""
000000001381""
000000001382""
000000001383""
000000001384""
000000001385""
000000001386""
000000001387""
000000001388""
000000001389""
000000001390""
000000001391""
000000001392""
000000001393""
000000001394""
000000001395""
000000001396""
000000001397""
000000001398""
000000001399""
000000001400""
000000001401""
000000001402""
000000001403""
000000001404""
000000001405""
000000001406""
000000001407""
000000001408""
000000001409""
000000001410""
000000001411""
000000001412""
000000001413""
000000001414""
000000001415""
000000001416""
000000001417""
000000001418""
000000001419""
000000001420""
000000001421""
000000001422""
000000001423""
000000001424""
000000001425""
000000001426""
000000001427""
000000001428""
000000001429""
000000001430""
000000001431""
000000001432""
000000001433""
000000001434""
000000001435""
000000001436""
000000001437""
000000001438""
000000001439""
000000001440""
000000001441""
000000001442""
000000001443""
000000001444""
000000001445""
000000001446""
000000001447""
000000001448""
000000001449""
000000001450""
000000001451""
000000001452""
000000001453""
000000001454""
000000001455""
000000001456""
000000001457""
000000001458""
000000001459""
000000001460""
000000001461""
000000001462""
000000001463""
000000001464""
000000001465""
000000001466""
000000001467""
000000001468""
000000001469""
000000001470""
000000001471""
000000001472""
000000001473""
000000001474""
000000001475""
000000001476""
000000001477""
000000001478""
000000001479""
000000001480""
000000001481""
000000001482""
000000001483""
000000001484""
000000001485""
000000001486""
000000001487""
000000001488""
000000001489""
000000001490""
000000001491""
000000001492""
000000001493""
000000001494""
000000001495""
000000001496""
000000001497""
000000001498""
000000001499""
000000001500""
000000001501""
000000001502""
000000001503""
000000001504""
000000001505""
000000001506""
000000001507""
000000001508""
000000001509""
000000001510""
000000001511""
000000001512""
000000001513""
000000001514""
000000001515""
000000001516""
000000001517""
000000001518""
000000001519""
000000001520""
000000001521""
000000001522""
000000001523""
000000001524""
000000001525""
000000001526""
000000001527""
000000001528""
000000001529""
000000001530""
000000001531""
000000001532""
000000001533""
000000001534""
000000001535""
000000001536""
000000001537""
000000001538""
.exports
000000000000"_ShouldLeaveAudioAlone$1"
1:000000000000
000000000001"_GetTweenRemainingDuration$1"
1:000000000068
000000000002"_CheckIfIsLongestTween$1"
1:000000000133
000000000003"TweenGame::GetRFromColor$1"
1:000000000292
000000000004"TweenGame::GetGFromColor$1"
1:000000000382
000000000005"TweenGame::GetBFromColor$1"
1:000000000539
000000000006"TweenMaths::Abs$1"
1:000000000906
000000000007"TweenMaths::GetDistance$4"
1:000000000960
000000000008"TweenMaths::Lerp$3"
1:000000001084
000000000009"TweenMaths::ClampInt$3"
1:000000001159
000000000010"TweenMaths::MaxInt$2"
1:000000001232
000000000011"TweenMaths::MinInt$2"
1:000000001276
000000000012"TweenMaths::ClampFloat$3"
1:000000001320
000000000013"TweenMaths::MaxFloat$2"
1:000000001393
000000000014"TweenMaths::MinFloat$2"
1:000000001437
000000000015"SecondsToLoops$1"
1:000000001481
000000000016"LoopsToSeconds$1"
1:000000001542
000000000017"WaitSeconds$1"
1:000000001598
000000000018"WaitForLongest$6"
1:000000001635
000000000019"SetTimerWithSeconds$2"
1:000000001822
000000000020"SetTimerForLongest$7"
1:000000001865
000000000021"SpeedToSeconds$5"
1:000000002058
000000000022"TweenEasing::EaseLinear$2"
1:000000002117
000000000023"TweenEasing::EaseInSine$4"
1:000000002148
000000000024"TweenEasing::EaseOutSine$4"
1:000000002254
000000000025"TweenEasing::EaseInOutSine$4"
1:000000002337
000000000026"TweenEasing::EaseInPower$5"
1:000000002462
000000000027"TweenEasing::EaseOutPower$5"
1:000000002548
000000000028"TweenEasing::EaseInOutPower$5"
1:000000002762
000000000029"TweenEasing::EaseInQuad$4"
1:000000003084
000000000030"TweenEasing::EaseOutQuad$4"
1:000000003167
000000000031"TweenEasing::EaseInOutQuad$4"
1:000000003272
000000000032"TweenEasing::EaseInExpo$4"
1:000000003520
000000000033"TweenEasing::EaseOutExpo$4"
1:000000003647
000000000034"TweenEasing::EaseInOutExpo$4"
1:000000003807
000000000035"TweenEasing::EaseInCirc$4"
1:000000004161
000000000036"TweenEasing::EaseOutCirc$4"
1:000000004290
000000000037"TweenEasing::EaseInOutCirc$4"
1:000000004410
000000000038"TweenEasing::EaseInBack$4"
1:000000004706
000000000039"TweenEasing::EaseOutBack$4"
1:000000004856
000000000040"TweenEasing::EaseInOutBack$4"
1:000000005032
000000000041"TweenEasing::EaseOutBounce$4"
1:000000005407
000000000042"TweenEasing::EaseInBounce$4"
1:000000005942
000000000043"TweenEasing::EaseInOutBounce$4"
1:000000006028
000000000044"TweenEasing::EaseInElastic$4"
1:000000006260
000000000045"TweenEasing::EaseOutElastic$4"
1:000000006587
000000000046"TweenEasing::EaseInOutElastic$4"
1:000000006905
000000000047"TweenEasing::GetValue$3"
1:000000007497
000000000048"TweenBase::Restart$0"
1:000000009177
000000000049"TweenBase::Reverse$0"
1:000000009230
000000000050"TweenBase::IsPlaying$0"
1:000000009938
000000000051"TweenBase::Init$7"
1:000000010040
000000000052"_TweenObject::InitTweenObject$7"
1:000000010431
000000000053"_TweenObject::Release$0"
1:000000010621
000000000054"_TweenObject::ReverseTweenObject$0"
1:000000010667
000000000055"_TweenObject::Step$1"
1:000000010767
000000000056"_TweenObject::Update$0"
1:000000030876
000000000057"_ShouldCleanUpTweenAtIndex$1"
1:000000031262
000000000058"_CleanupTweens$0"
1:000000031690
000000000059"_StopTween$2"
1:000000031844
000000000060"_StopTweens$3"
1:000000032068
000000000061"_StopTweensOfType$2"
1:000000032234
000000000062"_StopTweensOfTypeWithReference$3"
1:000000032353
000000000063"_StopTweensOfTypeWithStringReference$4"
1:000000032519
000000000064"_StopTweensForGUIControl$2"
1:000000032749
000000000065"_StopTweensForGUIControlOfType$3"
1:000000032885
000000000066"game_start$0"
1:000000033068
000000000067"repeatedly_execute_always$0"
1:000000033161
000000000068"on_event$2"
1:000000033320
000000000069"Tween::IncreaseGameSpeed$0"
1:000000033358
000000000070"Tween::RestoreGameSpeed$0"
1:000000033422
000000000071"Tween::IncreaseGameSpeedOnBlock$1"
1:000000033482
000000000072"Tween::StopAll$1"
1:000000033503
000000000073"Tween::WaitForAllToFinish$0"
1:000000033583
000000000074"Tween::Update$0"
1:000000033649
000000000075"Tween::Stop$1"
1:000000034143
000000000076"Tween::GetProgress$0"
1:000000034347
000000000077"_GetAvailableIndexFromTweenObjectArray$0"
1:000000034503
000000000078"_StartTween$14"
1:000000034673
000000000079"_StartGUITween$11"
1:000000035165
000000000080"_StartObjectTween$11"
1:000000035303
000000000081"_StartCharacterTween$11"
1:000000035441
000000000082"_StartRegionTween$11"
1:000000035579
000000000083"_StartGUIControlTween$11"
1:000000035717
000000000084"_StartMiscTween$11"
1:000000035835
000000000085"_StartPropertyTween$11"
1:000000035937
000000000086"_GetScreenViewportIndex$1"
1:000000036055
000000000087"_StartScreenViewportTween$11"
1:000000036185
000000000088"Viewport::TweenX$6"
1:000000036333
000000000089"Viewport::TweenY$6"
1:000000036522
000000000090"Viewport::TweenWidth$6"
1:000000036711
000000000091"Viewport::TweenHeight$6"
1:000000036863
000000000092"Viewport::TweenPosition$9"
1:000000037015
000000000093"Viewport::StopTweenPosition$1"
1:000000037274
000000000094"Viewport::StopAllTweens$1"
1:000000037350
000000000095"_GetCameraIndex$1"
1:000000037426
000000000096"_StartCameraTween$11"
1:000000037556
000000000097"Camera::TweenX$6"
1:000000037704
000000000098"Camera::TweenY$6"
1:000000037923
000000000099"Camera::TweenWidth$6"
1:000000038142
000000000100"Camera::TweenHeight$6"
1:000000038294
000000000101"Camera::TweenPosition$7"
1:000000038446
000000000102"Camera::TweenSize$7"
1:000000038589
000000000103"Camera::StopTweenPosition$1"
1:000000038732
000000000104"Camera::StopTweenSize$1"
1:000000038808
000000000105"Camera::StopAllTweens$1"
1:000000038884
000000000106"TweenShakeScreen$9"
1:000000038960
000000000107"TweenAreaScaling$10"
1:000000039045
000000000108"TweenSpeechVolume$7"
1:000000039131
000000000109"GUI::TweenX$6"
1:000000039214
000000000110"GUI::TweenY$6"
1:000000039332
000000000111"Object::TweenX$6"
1:000000039450
000000000112"Object::TweenY$6"
1:000000039568
000000000113"Character::TweenX$6"
1:000000039686
000000000114"Character::TweenY$6"
1:000000039804
000000000115"Character::TweenZ$6"
1:000000039922
000000000116"GUIControl::TweenX$6"
1:000000040040
000000000117"GUIControl::TweenY$6"
1:000000040158
000000000118"Label::TweenX$6"
1:000000040276
000000000119"Label::TweenY$6"
1:000000040394
000000000120"Button::TweenX$6"
1:000000040512
000000000121"Button::TweenY$6"
1:000000040630
000000000122"Slider::TweenX$6"
1:000000040748
000000000123"Slider::TweenY$6"
1:000000040866
000000000124"ListBox::TweenX$6"
1:000000040984
000000000125"ListBox::TweenY$6"
1:000000041102
000000000126"InvWindow::TweenX$6"
1:000000041220
000000000127"InvWindow::TweenY$6"
1:000000041338
000000000128"GUI::TweenPosition$7"
1:000000041456
000000000129"Object::TweenPosition$7"
1:000000041592
000000000130"Character::TweenPosition$7"
1:000000041728
000000000131"GUIControl::TweenPosition$7"
1:000000041864
000000000132"Label::TweenPosition$7"
1:000000042000
000000000133"Button::TweenPosition$7"
1:000000042136
000000000134"TextBox::TweenPosition$7"
1:000000042272
000000000135"ListBox::TweenPosition$7"
1:000000042408
000000000136"Slider::TweenPosition$7"
1:000000042544
000000000137"InvWindow::TweenPosition$7"
1:000000042680
000000000138"GUI::TweenTransparency$6"
1:000000042816
000000000139"Object::TweenTransparency$6"
1:000000042934
000000000140"Character::TweenTransparency$6"
1:000000043052
000000000141"GUI::TweenFadeOut$5"
1:000000043170
000000000142"GUI::TweenFadeIn$5"
1:000000043254
000000000143"Object::TweenFadeOut$5"
1:000000043338
000000000144"Object::TweenFadeIn$5"
1:000000043422
000000000145"Character::TweenFadeOut$5"
1:000000043506
000000000146"Character::TweenFadeIn$5"
1:000000043590
000000000147"GUI::TweenSize$7"
1:000000043674
000000000148"GUIControl::TweenSize$7"
1:000000043810
000000000149"Label::TweenSize$7"
1:000000043946
000000000150"Button::TweenSize$7"
1:000000044082
000000000151"TextBox::TweenSize$7"
1:000000044218
000000000152"ListBox::TweenSize$7"
1:000000044354
000000000153"Slider::TweenSize$7"
1:000000044490
000000000154"InvWindow::TweenSize$7"
1:000000044626
000000000155"GUI::TweenZOrder$6"
1:000000044762
000000000156"GUI::TweenBackgroundColorRed$6"
1:000000044880
000000000157"GUI::TweenBackgroundColorGreen$6"
1:000000045052
000000000158"GUI::TweenBackgroundColorBlue$6"
1:000000045224
000000000159"GUI::TweenBackgroundColorRGB$8"
1:000000045396
000000000160"GUI::TweenBackgroundColor$6"
1:000000045597
000000000161"GUI::StopTweenBackgroundColorRed$1"
1:000000045791
000000000162"GUI::StopTweenBackgroundColorGreen$1"
1:000000045856
000000000163"GUI::StopTweenBackgroundColorBlue$1"
1:000000045921
000000000164"GUI::StopTweenBackgroundColorRGB$1"
1:000000045986
000000000165"GUI::StopTweenBackgroundColor$1"
1:000000046095
000000000166"GUI::TweenBorderColorRed$6"
1:000000046146
000000000167"GUI::TweenBorderColorGreen$6"
1:000000046318
000000000168"GUI::TweenBorderColorBlue$6"
1:000000046490
000000000169"GUI::TweenBorderColorRGB$8"
1:000000046662
000000000170"GUI::TweenBorderColor$6"
1:000000046863
000000000171"GUI::StopTweenBorderColorRed$1"
1:000000047057
000000000172"GUI::StopTweenBorderColorGreen$1"
1:000000047122
000000000173"GUI::StopTweenBorderColorBlue$1"
1:000000047187
000000000174"GUI::StopTweenBorderColorRGB$1"
1:000000047252
000000000175"GUI::StopTweenBorderColor$1"
1:000000047361
000000000176"Object::TweenImage$7"
1:000000047412
000000000177"Character::TweenAnimationSpeed$6"
1:000000047942
000000000178"Character::TweenScaling$6"
1:000000048060
000000000179"Character::TweenTintRed$6"
1:000000048210
000000000180"Character::TweenTintGreen$6"
1:000000048358
000000000181"Character::TweenTintBlue$6"
1:000000048506
000000000182"Character::TweenTintSaturation$6"
1:000000048654
000000000183"Character::TweenTintLuminance$6"
1:000000048802
000000000184"Character::TweenTint$10"
1:000000048950
000000000185"Character::StopTweenTintRed$1"
1:000000049271
000000000186"Character::StopTweenTintGreen$1"
1:000000049336
000000000187"Character::StopTweenTintBlue$1"
1:000000049401
000000000188"Character::StopTweenTintSaturation$1"
1:000000049466
000000000189"Character::StopTweenTintLuminance$1"
1:000000049531
000000000190"Character::StopTweenTint$1"
1:000000049596
000000000191"Object::TweenTintRed$6"
1:000000049763
000000000192"Object::TweenTintGreen$6"
1:000000049911
000000000193"Object::TweenTintBlue$6"
1:000000050059
000000000194"Object::TweenTintSaturation$6"
1:000000050207
000000000195"Object::TweenTintLuminance$6"
1:000000050355
000000000196"Object::TweenTint$10"
1:000000050503
000000000197"Object::StopTweenTintRed$1"
1:000000050824
000000000198"Object::StopTweenTintGreen$1"
1:000000050889
000000000199"Object::StopTweenTintBlue$1"
1:000000050954
000000000200"Object::StopTweenTintSaturation$1"
1:000000051019
000000000201"Object::StopTweenTintLuminance$1"
1:000000051084
000000000202"Object::StopTweenTint$1"
1:000000051149
000000000203"Region::TweenLightLevel$6"
1:000000051316
000000000204"Region::TweenTintRed$6"
1:000000051464
000000000205"Region::TweenTintGreen$6"
1:000000051612
000000000206"Region::TweenTintBlue$6"
1:000000051760
000000000207"Region::TweenTintSaturation$6"
1:000000051908
000000000208"Region::TweenTintLuminance$6"
1:000000052056
000000000209"Region::TweenTint$10"
1:000000052204
000000000210"Label::TweenTextColorRed$6"
1:000000052522
000000000211"Label::TweenTextColorGreen$6"
1:000000052694
000000000212"Label::TweenTextColorBlue$6"
1:000000052866
000000000213"Label::TweenTextColorRGB$8"
1:000000053038
000000000214"Label::TweenTextColor$6"
1:000000053239
000000000215"Button::TweenTextColorRed$6"
1:000000053433
000000000216"Button::TweenTextColorGreen$6"
1:000000053605
000000000217"Button::TweenTextColorBlue$6"
1:000000053777
000000000218"Button::TweenTextColorRGB$8"
1:000000053949
000000000219"Button::TweenTextColor$6"
1:000000054150
000000000220"ListBox::TweenSelectedIndex$6"
1:000000054344
000000000221"ListBox::TweenTopItem$6"
1:000000054462
000000000222"ListBox::TweenSelectedBackColorRed$6"
1:000000054580
000000000223"ListBox::TweenSelectedBackColorGreen$6"
1:000000054752
000000000224"ListBox::TweenSelectedBackColorBlue$6"
1:000000054924
000000000225"ListBox::TweenSelectedBackColorRGB$8"
1:000000055096
000000000226"ListBox::TweenSelectedBackColor$6"
1:000000055297
000000000227"ListBox::StopTweenSelectedBackColorRed$1"
1:000000055491
000000000228"ListBox::StopTweenSelectedBackColorGreen$1"
1:000000055556
000000000229"ListBox::StopTweenSelectedBackColorBlue$1"
1:000000055621
000000000230"ListBox::StopTweenSelectedBackColorRGB$1"
1:000000055686
000000000231"ListBox::StopTweenSelectedBackColor$1"
1:000000055795
000000000232"ListBox::TweenSelectedTextColorRed$6"
1:000000055846
000000000233"ListBox::TweenSelectedTextColorGreen$6"
1:000000056018
000000000234"ListBox::TweenSelectedTextColorBlue$6"
1:000000056190
000000000235"ListBox::TweenSelectedTextColorRGB$8"
1:000000056362
000000000236"ListBox::TweenSelectedTextColor$6"
1:000000056563
000000000237"ListBox::StopTweenSelectedTextColorRed$1"
1:000000056757
000000000238"ListBox::StopTweenSelectedTextColorGreen$1"
1:000000056822
000000000239"ListBox::StopTweenSelectedTextColorBlue$1"
1:000000056887
000000000240"ListBox::StopTweenSelectedTextColorRGB$1"
1:000000056952
000000000241"ListBox::StopTweenSelectedTextColor$1"
1:000000057061
000000000242"ListBox::TweenTextColorRed$6"
1:000000057112
000000000243"ListBox::TweenTextColorGreen$6"
1:000000057284
000000000244"ListBox::TweenTextColorBlue$6"
1:000000057456
000000000245"ListBox::TweenTextColorRGB$8"
1:000000057628
000000000246"ListBox::TweenTextColor$6"
1:000000057829
000000000247"ListBox::StopTweenTextColorRed$1"
1:000000058023
000000000248"ListBox::StopTweenTextColorGreen$1"
1:000000058088
000000000249"ListBox::StopTweenTextColorBlue$1"
1:000000058153
000000000250"ListBox::StopTweenTextColorRGB$1"
1:000000058218
000000000251"ListBox::StopTweenTextColor$1"
1:000000058327
000000000252"InvWindow::TweenTopItem$6"
1:000000058378
000000000253"Slider::TweenValue$6"
1:000000058496
000000000254"GUI::StopAllTweens$1"
1:000000058614
000000000255"Object::StopAllTweens$1"
1:000000058679
000000000256"Character::StopAllTweens$1"
1:000000058744
000000000257"Region::StopAllTweens$1"
1:000000058809
000000000258"GUIControl::StopAllTweens$1"
1:000000058874
000000000259"Label::StopAllTweens$1"
1:000000058939
000000000260"Button::StopAllTweens$1"
1:000000059004
000000000261"TextBox::StopAllTweens$1"
1:000000059069
000000000262"ListBox::StopAllTweens$1"
1:000000059134
000000000263"Slider::StopAllTweens$1"
1:000000059181
000000000264"InvWindow::StopAllTweens$1"
1:000000059228
000000000265"StopTweenShakeScreen$1"
1:000000059275
000000000266"StopTweenAreaScaling$2"
1:000000059306
000000000267"StopTweenSpeechVolume$1"
1:000000059343
000000000268"Character::StopTweenPosition$1"
1:000000059374
000000000269"Object::StopTweenPosition$1"
1:000000059439
000000000270"GUI::StopTweenPosition$1"
1:000000059504
000000000271"GUIControl::StopTweenPosition$1"
1:000000059569
000000000272"Label::StopTweenPosition$1"
1:000000059621
000000000273"Button::StopTweenPosition$1"
1:000000059673
000000000274"TextBox::StopTweenPosition$1"
1:000000059725
000000000275"ListBox::StopTweenPosition$1"
1:000000059777
000000000276"Slider::StopTweenPosition$1"
1:000000059829
000000000277"InvWindow::StopTweenPosition$1"
1:000000059881
000000000278"Character::StopTweenTransparency$1"
1:000000059933
000000000279"Object::StopTweenTransparency$1"
1:000000059998
000000000280"GUI::StopTweenTransparency$1"
1:000000060063
000000000281"Character::StopTweenZ$1"
1:000000060128
000000000282"GUI::StopTweenZOrder$1"
1:000000060193
000000000283"GUI::StopTweenSize$1"
1:000000060258
000000000284"GUIControl::StopTweenSize$1"
1:000000060323
000000000285"Label::StopTweenSize$1"
1:000000060375
000000000286"Button::StopTweenSize$1"
1:000000060427
000000000287"TextBox::StopTweenSize$1"
1:000000060479
000000000288"ListBox::StopTweenSize$1"
1:000000060531
000000000289"Slider::StopTweenSize$1"
1:000000060583
000000000290"InvWindow::StopTweenSize$1"
1:000000060635
000000000291"Character::StopTweenScaling$1"
1:000000060687
000000000292"Character::StopTweenAnimationSpeed$1"
1:000000060752
000000000293"Region::StopTweenLightLevel$1"
1:000000060817
000000000294"Region::StopTweenTintRed$1"
1:000000060882
000000000295"Region::StopTweenTintGreen$1"
1:000000060947
000000000296"Region::StopTweenTintBlue$1"
1:000000061012
000000000297"Region::StopTweenTintSaturation$1"
1:000000061077
000000000298"Region::StopTweenTintLuminance$1"
1:000000061142
000000000299"Region::StopTweenTint$1"
1:000000061207
000000000300"Label::StopTweenTextColorRed$1"
1:000000061374
000000000301"Label::StopTweenTextColorGreen$1"
1:000000061426
000000000302"Label::StopTweenTextColorBlue$1"
1:000000061478
000000000303"Label::StopTweenTextColorRGB$1"
1:000000061530
000000000304"Label::StopTweenTextColor$1"
1:000000061639
000000000305"Button::StopTweenTextColorRed$1"
1:000000061690
000000000306"Button::StopTweenTextColorGreen$1"
1:000000061742
000000000307"Button::StopTweenTextColorBlue$1"
1:000000061794
000000000308"Button::StopTweenTextColorRGB$1"
1:000000061846
000000000309"Button::StopTweenTextColor$1"
1:000000061955
000000000310"Slider::StopTweenValue$1"
1:000000062006
000000000311"ListBox::StopTweenSelectedIndex$1"
1:000000062058
000000000312"ListBox::StopTweenTopItem$1"
1:000000062110
000000000313"InvWindow::StopTweenTopItem$1"
1:000000062162
000000000314"TextBox::StopTweenTextColorRed$1"
1:000000062214
000000000315"TextBox::StopTweenTextColorGreen$1"
1:000000062266
000000000316"TextBox::StopTweenTextColorBlue$1"
1:000000062318
000000000317"TextBox::StopTweenTextColorRGB$1"
1:000000062370
000000000318"TextBox::StopTweenTextColor$1"
1:000000062479
000000000319"Slider::StopTweenHandleOffset$1"
1:000000062530
000000000320"TextBox::TweenTextColorRed$6"
1:000000062582
000000000321"TextBox::TweenTextColorGreen$6"
1:000000062754
000000000322"TextBox::TweenTextColorBlue$6"
1:000000062926
000000000323"TextBox::TweenTextColorRGB$8"
1:000000063098
000000000324"TextBox::TweenTextColor$6"
1:000000063299
000000000325"Slider::TweenHandleOffset$6"
1:000000063493
000000000326"AudioChannel::StopTweenPosition$1"
1:000000063611
000000000327"AudioChannel::StopTweenPanning$1"
1:000000063676
000000000328"AudioChannel::StopTweenVolume$1"
1:000000063741
000000000329"AudioChannel::StopTweenRoomLocation$1"
1:000000063806
000000000330"_StartAudioTween$11"
1:000000063871
000000000331"AudioChannel::TweenPosition$6"
1:000000064009
000000000332"AudioChannel::TweenPanning$6"
1:000000064164
000000000333"AudioChannel::TweenVolume$6"
1:000000064302
000000000334"AudioChannel::TweenFadeOut$5"
1:000000064440
000000000335"AudioChannel::TweenFadeIn$5"
1:000000064524
000000000336"AudioChannel::TweenRoomLocation$9"
1:000000064608
000000000337"AudioChannel::StopAllTweens$1"
1:000000064712
000000000338"AudioChannel::StopTweenSpeed$1"
1:000000064777
000000000339"AudioChannel::TweenSpeed$6"
1:000000064842
000000000340"System::TweenVolume$6"
1:000000064971
000000000341"System::StopTweenVolume$1"
1:000000065080
000000000342"TweenAmbientLightLevel$7"
1:000000065111
000000000343"StopTweenAmbientLightLevel$1"
1:000000065254
000000000344"System::TweenGamma$6"
1:000000065285
000000000345"System::StopTweenGamma$1"
1:000000065374
000000000346"Character::TweenLightLevel$7"
1:000000065405
000000000347"Object::TweenLightLevel$7"
1:000000065567
000000000348"Character::StopTweenLightLevel$1"
1:000000065729
000000000349"Object::StopTweenLightLevel$1"
1:000000065794
000000000350"Character::TweenProperty$7"
1:000000065859
000000000351"Character::StopTweenProperty$2"
1:000000066021
000000000352"Hotspot::TweenProperty$7"
1:000000066105
000000000353"Hotspot::StopTweenProperty$2"
1:000000066267
000000000354"InventoryItem::TweenProperty$7"
1:000000066351
000000000355"InventoryItem::StopTweenProperty$2"
1:000000066513
000000000356"Object::TweenProperty$7"
1:000000066597
000000000357"Object::StopTweenProperty$2"
1:000000066759
000000000358"Room::TweenProperty$7"
1:000000066843
000000000359"Room::StopTweenProperty$2"
1:000000066986
.sections
"tween.asc" = 0

