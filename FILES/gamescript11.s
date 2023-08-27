.data
int var000000 = 0 ; unreferenced variable, assuming char
int var000004 = 0
int var000008 = 0
char[8] var000012 = 0 ; unreferenced variable, assuming char
int var000020 = 0
.text

ToSpaces$1: ; 1 args
	sourceline 18
	thisaddr 0
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 19
	li ax, ""
	newstr ax
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 20
	li ax, 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000000038: ; inside ToSpaces$1, ; referenced by 1 spots
	sourceline 21
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000000137
	sourceline 23
	push op
	li ax, " "
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Append^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 8
	push mar
	pop mar
	ptrset ax
	sourceline 24
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 25
	jmpi label000000000038
label000000000137: ; inside ToSpaces$1, ; referenced by 1 spots
	sourceline 26
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	ptrstack 16
	ptrzerond 
	ptrstack 8
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 27
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 8
	ptrzerond 
	subi sp, 8
	ret 

Character::playBloop$0: ; 0 args
	sourceline 30
	thisaddr 172
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 31
	li mar, fastForward
	memread4 ax
	jnzi label000000000209
	push ax
	li mar, isThinking
	memread4 ax
	pop bx
	lor bx, ax
	mr ax, bx
label000000000209: ; inside Character::playBloop$0, ; referenced by 1 spots
	jzi label000000000218
	li ax, 0
	subi sp, 4
	ret 
label000000000218: ; inside Character::playBloop$0, ; referenced by 1 spots
	sourceline 34
	push op
	pop mar
	mr ax, mar
	mr bx, ax
	jmpi label000000000469
label000000000232: ; inside Character::playBloop$0, ; referenced by 2 spots
	jmpi label000000000522
label000000000234: ; inside Character::playBloop$0, ; referenced by 1 spots
	sourceline 36
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aClarissaBloop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanBloop
	push mar
	pop mar
	ptrset ax
	sourceline 37
	li ax, 0
	jmpi label000000000232
label000000000283: ; inside Character::playBloop$0, ; referenced by 1 spots
	sourceline 40
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
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000000371
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aIngridBloop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanBloop
	push mar
	pop mar
	ptrset ax
	jmpi label000000000413
label000000000371: ; inside Character::playBloop$0, ; referenced by 1 spots
	sourceline 43
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aIngridPhoneBloop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanBloop
	push mar
	pop mar
	ptrset ax
label000000000413: ; inside Character::playBloop$0, ; referenced by 1 spots
	sourceline 44
	li ax, 0
	jmpi label000000000232
label000000000420: ; inside Character::playBloop$0, ; referenced by 1 spots
	sourceline 47
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aPlumberBloop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanBloop
	push mar
	pop mar
	ptrset ax
	sourceline 48
	li ax, 0
	jmpi label000000000522
label000000000469: ; inside Character::playBloop$0, ; referenced by 1 spots
	sourceline 49
	sourceline 35
	push bx
	li mar, cClarissa
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000000234
	sourceline 39
	push bx
	li mar, cIngrid
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000000283
	sourceline 46
	push bx
	li mar, cPlumber
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000000420
label000000000522: ; inside Character::playBloop$0, ; referenced by 2 spots
	sourceline 50
	li ax, 0
	subi sp, 4
	ret 

toggleGUI$1: ; 1 args
	sourceline 55
	thisaddr 531
	sourceline 56
	ptrstack 8
	memread4 ax
	mr bx, ax
	li mar, gDialog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 58
	li ax, 0
	ret 

IsThisPunctuation$1: ; 1 args
	sourceline 61
	thisaddr 573
	sourceline 62
	ptrstack 8
	memread4 ax
	mr bx, ax
	jmpi label000000000616
label000000000588: ; inside IsThisPunctuation$1, ; referenced by 1 spots
	jmpi label000000000718
label000000000590: ; inside IsThisPunctuation$1, ; referenced by 7 spots
	sourceline 71
	li ax, 1
	ret 
	sourceline 72
	li ax, 0
	jmpi label000000000588
label000000000603: ; inside IsThisPunctuation$1, ; referenced by 1 spots
	sourceline 75
	li ax, 0
	ret 
	sourceline 76
	li ax, 0
	jmpi label000000000718
label000000000616: ; inside IsThisPunctuation$1, ; referenced by 1 spots
	sourceline 77
	sourceline 64
	push bx
	li ax, 46
	pop bx
	cmpne ax, bx
	jzi label000000000590
	sourceline 65
	push bx
	li ax, 44
	pop bx
	cmpne ax, bx
	jzi label000000000590
	sourceline 66
	push bx
	li ax, 45
	pop bx
	cmpne ax, bx
	jzi label000000000590
	sourceline 67
	push bx
	li ax, 63
	pop bx
	cmpne ax, bx
	jzi label000000000590
	sourceline 68
	push bx
	li ax, 33
	pop bx
	cmpne ax, bx
	jzi label000000000590
	sourceline 69
	push bx
	li ax, 58
	pop bx
	cmpne ax, bx
	jzi label000000000590
	sourceline 70
	push bx
	li ax, 59
	pop bx
	cmpne ax, bx
	jzi label000000000590
	jmpi label000000000603
label000000000718: ; inside IsThisPunctuation$1, ; referenced by 2 spots
	sourceline 78
	li ax, 0
	ret 

WriteText$4: ; 4 args
	sourceline 81
	thisaddr 724
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	sourceline 83
	li ax, 0
	farpush ax
	li ax, 20
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	sourceline 84
	li ax, 0
	farpush ax
	li ax, 19
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	sourceline 87
	li ax, 1
	li mar, @var000004
	memwrite4 ax
	sourceline 89
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, ToSpaces$1
	call ax
	subi sp, 4
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 90
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 92
	li mar, isThinking
	memread4 ax
	not ax
	jzi label000000000883
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	li mar, cClarissa
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000000883: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000001055
	sourceline 93
	push op
	li ax, 1
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_SpeechView
	farcall ax
	pop op
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 94
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_SpeechAnimationDelay
	farcall ax
	pop op
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Loop
	farcall ax
	pop op
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
label000000001055: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 98
	ptrstack 24
	memread4 ax
	not ax
	jzi label000000001144
	sourceline 99
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Name
	farcall ax
	pop op
	li mar, @var000008
	push mar
	pop mar
	ptrset ax
	sourceline 100
	push op
	li ax, ": "
	farpush ax
	li mar, @var000008
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Append^1
	farcall ax
	farsubsp 1
	pop op
	li mar, @var000008
	push mar
	pop mar
	ptrset ax
label000000001144: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 103
	ptrstack 24
	memread4 ax
	jzi label000000001169
	push ax
	li mar, isThinking
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001169: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000001214
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	farpush ax
	li mar, @var000008
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, "%s%s"
	farpush ax
	setfuncargs 3
	li ax, String::Format^101
	farcall ax
	farsubsp 3
	ptrstack 4
	push mar
	pop mar
	ptrset ax
label000000001214: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 107
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
	li ax, String::get_Length
	farcall ax
	pop op
	push ax
	li ax, 2
	pop bx
	div bx, ax
	mr ax, bx
	push ax
	li ax, 3
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000001287
	li ax, "   "
	newstr ax
	ptrstack 8
	push mar
	pop mar
	ptrset ax
	jmpi label000000001363
label000000001287: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 110
	push op
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	push ax
	li ax, 2
	pop bx
	div bx, ax
	mr ax, bx
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 8
	push mar
	pop mar
	ptrset ax
label000000001363: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 113
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 115
	li mar, isThinking
	memread4 ax
	not ax
	jzi label000000001400
	push ax
	ptrstack 32
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001400: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000001454
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Name
	farcall ax
	pop op
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	ptrstack 4
	memwrite4 ax
label000000001454: ; inside WriteText$4, ; referenced by 2 spots
	sourceline 118
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	pop bx
	lte bx, ax
	mr ax, bx
	jzi label000000002374
	sourceline 120
	ptrstack 28
	memread4 ax
	not ax
	jzi label000000001567
	push op
	ptrstack 8
	memread4 ax
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	mr bx, ax
	li mar, lblDialog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000001663
label000000001567: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 123
	push op
	li mar, @var000008
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	mr bx, ax
	li mar, lblDialog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
label000000001663: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 128
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, IsThisPunctuation$1
	call ax
	subi sp, 4
	jzi label000000001791
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 12
	memread4 ax
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, 41
	pop bx
	cmpne bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000001791: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000001855
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 12
	memread4 ax
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, 45
	pop bx
	cmpne bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000001855: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000001874
	push ax
	li mar, @var000004
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001874: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000001892
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	jmpi label000000001908
label000000001892: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 132
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
label000000001908: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 136
	ptrstack 4
	memread4 ax
	push ax
	li ax, 6
	pop bx
	mod bx, ax
	mr ax, bx
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002016
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, IsThisPunctuation$1
	call ax
	subi sp, 4
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002016: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000002037
	push op
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, Character::playBloop$0
	call ax
	pop op
label000000002037: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 141
	li mar, fastForward
	memread4 ax
	not ax
	jzi label000000002059
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000002254
label000000002059: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 145
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	push ax
	li ax, 10
	pop bx
	sub bx, ax
	mr ax, bx
	pop bx
	lte bx, ax
	mr ax, bx
	jzi label000000002138
	li ax, 10
	push ax
	ptrstack 8
	memread4 ax
	pop bx
	add ax, bx
	ptrstack 4
	memwrite4 ax
	jmpi label000000002254
label000000002138: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 147
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000002243
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	push ax
	ptrstack 8
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	ptrstack 8
	memread4 ax
	pop bx
	add ax, bx
	ptrstack 4
	memwrite4 ax
	jmpi label000000002254
label000000002243: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 150
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
label000000002254: ; inside WriteText$4, ; referenced by 3 spots
	sourceline 154
	li mar, fastForward
	memread4 ax
	not ax
	jzi label000000002370
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, Mouse::IsButtonDown^1
	farcall ax
	farsubsp 1
	jnzi label000000002305
	push ax
	li ax, 32
	farpush ax
	setfuncargs 1
	li ax, IsKeyPressed
	farcall ax
	farsubsp 1
	pop bx
	lor bx, ax
	mr ax, bx
label000000002305: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000002324
	push ax
	li mar, @var000004
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002324: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000002370
	sourceline 157
	li ax, 1
	li mar, @var000004
	memwrite4 ax
	sourceline 158
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	ptrstack 4
	memwrite4 ax
label000000002370: ; inside WriteText$4, ; referenced by 2 spots
	sourceline 160
	jmpi label000000001454
label000000002374: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 162
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	li mar, @var000008
	push mar
	pop mar
	ptrset ax
	sourceline 164
	li mar, isThinking
	memread4 ax
	not ax
	jzi label000000002432
	push op
	li ax, 1
	farpush ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::UnlockView^1
	farcall ax
	farsubsp 1
	pop op
label000000002432: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 167
	li mar, fastForward
	memread4 ax
	not ax
	jzi label000000002459
	push ax
	ptrstack 36
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002459: ; inside WriteText$4, ; referenced by 1 spots
	jzi label000000002511
	push op
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li mar, cMrBones
	mr ax, mar
	callobj ax
	setfuncargs 4
	li ax, Character::SayAt^4
	farcall ax
	farsubsp 4
	pop op
	jmpi label000000002541
label000000002511: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 170
	li mar, fastForward
	memread4 ax
	not ax
	jzi label000000002541
	li ax, 10
	farpush ax
	li ax, -16777216
	farpush ax
	setfuncargs 2
	li ax, WaitInput
	farcall ax
	farsubsp 2
label000000002541: ; inside WriteText$4, ; referenced by 2 spots
	sourceline 175
	li mar, InDialog
	memread4 ax
	jzi label000000002571
	li ax, 10
	farpush ax
	li ax, 20
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	jmpi label000000002592
label000000002571: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 179
	li ax, 1
	farpush ax
	li ax, 20
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
label000000002592: ; inside WriteText$4, ; referenced by 1 spots
	sourceline 180
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 12
	ptrzerond 
	ptrstack 8
	ptrzerond 
	subi sp, 12
	ret 

RandomChar$1: ; 1 args
	sourceline 182
	thisaddr 2613
	sourceline 183
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, Random
	farcall ax
	farsubsp 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 184
	ptrstack 12
	memread4 ax
	mr mar, sp
	memwrite1 ax
	addi sp, 1
	sourceline 186
	ptrstack 5
	memread4 ax
	jzi label000000002750
	sourceline 187
	ptrstack 13
	memread4 ax
	push ax
	li ax, 90
	pop bx
	lte bx, ax
	mr ax, bx
	jzi label000000002717
	li ax, 65
	push ax
	li ax, 25
	farpush ax
	setfuncargs 1
	li ax, Random
	farcall ax
	farsubsp 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 1
	memwrite1 ax
	jmpi label000000002750
label000000002717: ; inside RandomChar$1, ; referenced by 1 spots
	sourceline 191
	li ax, 97
	push ax
	li ax, 25
	farpush ax
	setfuncargs 1
	li ax, Random
	farcall ax
	farsubsp 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 1
	memwrite1 ax
label000000002750: ; inside RandomChar$1, ; referenced by 2 spots
	sourceline 194
	ptrstack 1
	memread1 ax
	subi sp, 5
	ret 
	sourceline 195
	li ax, 0
	subi sp, 5
	ret 

ReplaceText$1: ; 1 args
	sourceline 200
	thisaddr 2769
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 201
	push op
	li ax, 1
	farpush ax
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
	li ax, Character::get_Name
	farcall ax
	pop op
	assert ax
	farpush ax
	li ax, "PLAYERNAME"
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	ptrstack 8
	push mar
	pop mar
	ptrset ax
	sourceline 205
	push op
	li ax, "^^"
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::IndexOf^1
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, -1
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000003584
	sourceline 207
	push op
	li ax, "^^"
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::IndexOf^1
	farcall ax
	farsubsp 1
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 208
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 210
	push op
	li ax, 32
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::ReplaceCharAt^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 16
	push mar
	pop mar
	ptrset ax
	sourceline 211
	push op
	li ax, 32
	farpush ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::ReplaceCharAt^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 16
	push mar
	pop mar
	ptrset ax
	sourceline 212
	push op
	li ax, "^^"
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::IndexOf^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	memwrite4 ax
	sourceline 214
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	add bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000003110: ; inside ReplaceText$1, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000003414
	sourceline 215
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 8
	memread4 ax
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, IsThisPunctuation$1
	call ax
	subi sp, 4
	not ax
	jzi label000000003247
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 12
	memread4 ax
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, 32
	pop bx
	cmpne bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000003247: ; inside ReplaceText$1, ; referenced by 1 spots
	jzi label000000003311
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 12
	memread4 ax
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, 39
	pop bx
	cmpne bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000003311: ; inside ReplaceText$1, ; referenced by 1 spots
	jzi label000000003401
	push op
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 12
	memread4 ax
	mr dx, ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, String::geti_Chars
	farcall ax
	farsubsp 1
	pop op
	push ax
	li ax, RandomChar$1
	call ax
	subi sp, 4
	farpush ax
	ptrstack 8
	memread4 ax
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::ReplaceCharAt^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
label000000003401: ; inside ReplaceText$1, ; referenced by 1 spots
	sourceline 217
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000003110
label000000003414: ; inside ReplaceText$1, ; referenced by 1 spots
	subi sp, 4
	sourceline 219
	push op
	li ax, 0
	farpush ax
	li ax, ""
	farpush ax
	push op
	li ax, 2
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	assert ax
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	ptrstack 16
	push mar
	pop mar
	ptrset ax
	sourceline 220
	push op
	li ax, 0
	farpush ax
	li ax, ""
	farpush ax
	push op
	li ax, 2
	farpush ax
	ptrstack 16
	memread4 ax
	farpush ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	assert ax
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	ptrstack 16
	push mar
	pop mar
	ptrset ax
	sourceline 221
	subi sp, 8
label000000003584: ; inside ReplaceText$1, ; referenced by 1 spots
	sourceline 223
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	ptrstack 8
	ptrzerond 
	ret 
	sourceline 224
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

Character::Speak$2: ; 2 args
	sourceline 228
	thisaddr 3607
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 229
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 230
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 231
	li ax, ""
	newstr ax
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 234
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_View
	farcall ax
	pop op
	li mar, @var000020
	memwrite4 ax
	sourceline 237
	push op
	li ax, 1
	farpush ax
	li ax, "%a"
	farpush ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::StartsWith^2
	farcall ax
	farsubsp 2
	pop op
	jzi label000000003788
	sourceline 238
	li ax, 1
	ptrstack 12
	memwrite4 ax
	sourceline 239
	push op
	li ax, 1
	farpush ax
	li ax, " "
	farpush ax
	li ax, "%a"
	farpush ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	ptrstack 24
	push mar
	pop mar
	ptrset ax
label000000003788: ; inside Character::Speak$2, ; referenced by 1 spots
	sourceline 242
	push op
	li ax, 1
	farpush ax
	li ax, "%DONTWAIT"
	farpush ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::EndsWith^2
	farcall ax
	farsubsp 2
	pop op
	jnzi label000000003868
	push ax
	push op
	li ax, 1
	farpush ax
	li ax, "%DW"
	farpush ax
	ptrstack 32
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::EndsWith^2
	farcall ax
	farsubsp 2
	pop op
	pop bx
	lor bx, ax
	mr ax, bx
label000000003868: ; inside Character::Speak$2, ; referenced by 1 spots
	jzi label000000003975
	sourceline 244
	li ax, 1
	ptrstack 8
	memwrite4 ax
	sourceline 245
	push op
	li ax, 1
	farpush ax
	li ax, ""
	farpush ax
	li ax, "%DONTWAIT"
	farpush ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	ptrstack 24
	push mar
	pop mar
	ptrset ax
	sourceline 246
	push op
	li ax, 1
	farpush ax
	li ax, ""
	farpush ax
	li ax, "%DW"
	farpush ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	ptrstack 24
	push mar
	pop mar
	ptrset ax
label000000003975: ; inside Character::Speak$2, ; referenced by 1 spots
	sourceline 249
	li mar, isThinking
	memread4 ax
	not ax
	jzi label000000004002
	push ax
	ptrstack 16
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000004002: ; inside Character::Speak$2, ; referenced by 1 spots
	jzi label000000004072
	sourceline 251
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_Name
	farcall ax
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 252
	push op
	li ax, ": "
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Append^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
label000000004072: ; inside Character::Speak$2, ; referenced by 1 spots
	sourceline 256
	li mar, gDialog
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	not ax
	jzi label000000004110
	li ax, 1
	push ax
	li ax, toggleGUI$1
	call ax
	subi sp, 4
label000000004110: ; inside Character::Speak$2, ; referenced by 1 spots
	sourceline 260
	push op
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Append^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 261
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, ReplaceText$1
	call ax
	subi sp, 4
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 264
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, WriteText$4
	call ax
	subi sp, 16
	sourceline 265
	li ax, 0
	ptrstack 4
	ptrzerond 
	ptrstack 24
	ptrzerond 
	subi sp, 16
	ret 

ClearPortraits$0: ; 0 args
	sourceline 268
	thisaddr 4239
	sourceline 269
	li ax, 0
	mr bx, ax
	li mar, btnCharFaceL
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Button::set_NormalGraphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 270
	li ax, 0
	mr bx, ax
	li mar, btnCharPoseL
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Button::set_NormalGraphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 271
	li ax, 0
	ret 

repeatedly_execute_always$0: ; 0 args
	sourceline 275
	thisaddr 4311
	sourceline 276
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, Mouse::IsButtonDown^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000004361
	push ax
	li ax, 32
	farpush ax
	setfuncargs 1
	li ax, IsKeyPressed
	farcall ax
	farsubsp 1
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000004361: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	jzi label000000004371
	li ax, 0
	li mar, @var000004
	memwrite4 ax
label000000004371: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	sourceline 280
	li ax, 20
	farpush ax
	setfuncargs 1
	li ax, IsTimerExpired
	farcall ax
	farsubsp 1
	jzi label000000004406
	push ax
	li mar, InDialog
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000004406: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	jzi label000000004421
	li ax, 0
	push ax
	li ax, toggleGUI$1
	call ax
	subi sp, 4
label000000004421: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	sourceline 283
	li ax, 0
	ret 

setPose$2: ; 2 args
	sourceline 288
	thisaddr 4427
	sourceline 289
	ptrstack 12
	memread4 ax
	jzi label000000004469
	ptrstack 8
	memread4 ax
	mr bx, ax
	li mar, btnCharPoseL
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Button::set_NormalGraphic
	farcall ax
	farsubsp 1
	pop op
label000000004469: ; inside setPose$2, ; referenced by 1 spots
	sourceline 291
	li ax, 0
	ret 

setFace$2: ; 2 args
	sourceline 294
	thisaddr 4475
	sourceline 295
	ptrstack 12
	memread4 ax
	jzi label000000004517
	ptrstack 8
	memread4 ax
	mr bx, ax
	li mar, btnCharFaceL
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Button::set_NormalGraphic
	farcall ax
	farsubsp 1
	pop op
label000000004517: ; inside setFace$2, ; referenced by 1 spots
	sourceline 297
	li ax, 0
	ret 

setLeft$2: ; 2 args
	sourceline 300
	thisaddr 4523
	sourceline 301
	li ax, 1
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, setPose$2
	call ax
	subi sp, 8
	sourceline 302
	li ax, 1
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, setFace$2
	call ax
	subi sp, 8
	sourceline 303
	li ax, 0
	ret 

setRight$2: ; 2 args
	sourceline 307
	thisaddr 4575
	sourceline 309
	li ax, 0
	ret 

Narrate$1: ; 1 args
	sourceline 313
	thisaddr 4585
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 314
	li ax, 1
	li mar, isThinking
	memwrite4 ax
	sourceline 316
	li ax, "("
	newstr ax
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 317
	push op
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Append^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 318
	push op
	li ax, ")"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Append^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 320
	push op
	li ax, 0
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
	callobj ax
	li ax, Character::Speak$2
	call ax
	subi sp, 8
	pop op
	sourceline 321
	li ax, 0
	li mar, isThinking
	memwrite4 ax
	sourceline 322
	li ax, 0
	ptrstack 12
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 4
	ret 

Tutorialize$1: ; 1 args
	sourceline 326
	thisaddr 4768
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 327
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, Narrate$1
	call ax
	subi sp, 4
	sourceline 328
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

Dialog::StartDialog$0: ; 0 args
	sourceline 330
	thisaddr 4807
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 332
	li ax, 1
	li mar, InDialog
	memwrite4 ax
	sourceline 333
	li ax, ""
	newstr ax
	mr bx, ax
	li mar, lblAction
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 334
	li ax, 1
	mr bx, ax
	li mar, gDialog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 335
	li ax, ""
	newstr ax
	mr bx, ax
	li mar, lblDialog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 336
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::Start^0
	farcall ax
	pop op
	sourceline 337
	li ax, 0
	subi sp, 4
	ret 

EndDialog$0: ; 0 args
	sourceline 339
	thisaddr 4958
	sourceline 341
	li ax, 0
	li mar, InDialog
	memwrite4 ax
	sourceline 342
	li ax, 0
	mr bx, ax
	li mar, gDialog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 343
	li ax, 0
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
"__NEWSCRIPTSTART_showsplash.ash"
"__NEWSCRIPTSTART_chara enums.ash"
"__NEWSCRIPTSTART_ViewportFixer.ash"
"__NEWSCRIPTSTART_dialog.ash"
"__NEWSCRIPTSTART_dialog.asc"
""
" "
": "
"%s%s"
"   "
"PLAYERNAME"
"^^"
"^^"
"^^"
""
""
""
"%a"
"%a"
" "
"%DONTWAIT"
"%DW"
"%DONTWAIT"
""
"%DW"
""
": "
"("
")"
""
""
.imports
000000000000"String::Format^101"
000000000001""
000000000002"String::Append^1"
000000000003""
000000000004""
000000000005""
000000000006"String::IndexOf^1"
000000000007""
000000000008"String::ReplaceCharAt^2"
000000000009"String::Substring^2"
000000000010"String::Truncate^1"
000000000011""
000000000012""
000000000013"String::EndsWith^2"
000000000014"String::Replace^3"
000000000015"String::StartsWith^2"
000000000016""
000000000017""
000000000018"String::geti_Chars"
000000000019"String::get_Length"
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
000000000073""
000000000074""
000000000075""
000000000076""
000000000077""
000000000078""
000000000079""
000000000080""
000000000081""
000000000082""
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
000000000101""
000000000102""
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
000000000135"Mouse::IsButtonDown^1"
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
000000000166"IsTimerExpired"
000000000167""
000000000168""
000000000169""
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
000000000189""
000000000190""
000000000191""
000000000192""
000000000193""
000000000194""
000000000195""
000000000196""
000000000197""
000000000198""
000000000199""
000000000200""
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
000000000254"Random"
000000000255""
000000000256""
000000000257""
000000000258""
000000000259""
000000000260""
000000000261""
000000000262""
000000000263""
000000000264""
000000000265""
000000000266""
000000000267""
000000000268""
000000000269""
000000000270""
000000000271""
000000000272""
000000000273""
000000000274""
000000000275""
000000000276""
000000000277""
000000000278""
000000000279"Wait"
000000000280""
000000000281""
000000000282""
000000000283""
000000000284"WaitInput"
000000000285"IsKeyPressed"
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
000000000299""
000000000300""
000000000301""
000000000302""
000000000303""
000000000304""
000000000305""
000000000306""
000000000307""
000000000308""
000000000309""
000000000310""
000000000311""
000000000312""
000000000313""
000000000314""
000000000315""
000000000316""
000000000317""
000000000318""
000000000319""
000000000320""
000000000321""
000000000322""
000000000323""
000000000324""
000000000325""
000000000326""
000000000327""
000000000328""
000000000329"Label::get_Text"
000000000330"Label::set_Text"
000000000331""
000000000332""
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
000000000343"Button::get_NormalGraphic"
000000000344"Button::set_NormalGraphic"
000000000345""
000000000346""
000000000347""
000000000348""
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
000000000362""
000000000363""
000000000364""
000000000365""
000000000366""
000000000367""
000000000368""
000000000369""
000000000370""
000000000371""
000000000372""
000000000373""
000000000374""
000000000375""
000000000376""
000000000377""
000000000378""
000000000379""
000000000380""
000000000381""
000000000382""
000000000383""
000000000384""
000000000385""
000000000386""
000000000387""
000000000388""
000000000389""
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
000000000403""
000000000404""
000000000405""
000000000406""
000000000407""
000000000408""
000000000409""
000000000410""
000000000411""
000000000412""
000000000413""
000000000414""
000000000415""
000000000416""
000000000417""
000000000418""
000000000419""
000000000420""
000000000421""
000000000422""
000000000423""
000000000424""
000000000425""
000000000426""
000000000427""
000000000428""
000000000429""
000000000430""
000000000431""
000000000432""
000000000433""
000000000434""
000000000435""
000000000436""
000000000437""
000000000438""
000000000439"GUI::get_Visible"
000000000440"GUI::set_Visible"
000000000441""
000000000442""
000000000443""
000000000444""
000000000445""
000000000446""
000000000447""
000000000448""
000000000449""
000000000450""
000000000451""
000000000452""
000000000453""
000000000454""
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
000000000465""
000000000466""
000000000467""
000000000468""
000000000469""
000000000470""
000000000471""
000000000472""
000000000473""
000000000474""
000000000475""
000000000476""
000000000477""
000000000478""
000000000479""
000000000480""
000000000481""
000000000482""
000000000483""
000000000484""
000000000485""
000000000486""
000000000487""
000000000488""
000000000489""
000000000490""
000000000491""
000000000492""
000000000493""
000000000494""
000000000495""
000000000496""
000000000497""
000000000498""
000000000499""
000000000500""
000000000501"Dialog::Start^0"
000000000502""
000000000503""
000000000504""
000000000505""
000000000506""
000000000507""
000000000508""
000000000509""
000000000510""
000000000511""
000000000512""
000000000513""
000000000514""
000000000515""
000000000516""
000000000517""
000000000518""
000000000519""
000000000520""
000000000521""
000000000522""
000000000523""
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
000000000554""
000000000555""
000000000556""
000000000557""
000000000558""
000000000559""
000000000560""
000000000561""
000000000562""
000000000563""
000000000564""
000000000565""
000000000566""
000000000567""
000000000568""
000000000569""
000000000570""
000000000571""
000000000572""
000000000573"AudioClip::Play^2"
000000000574""
000000000575""
000000000576""
000000000577""
000000000578""
000000000579""
000000000580""
000000000581""
000000000582""
000000000583""
000000000584""
000000000585""
000000000586""
000000000587""
000000000588""
000000000589""
000000000590""
000000000591""
000000000592""
000000000593""
000000000594""
000000000595""
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
000000000608""
000000000609""
000000000610""
000000000611""
000000000612""
000000000613""
000000000614""
000000000615""
000000000616""
000000000617""
000000000618""
000000000619""
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
000000000630""
000000000631""
000000000632""
000000000633""
000000000634""
000000000635""
000000000636""
000000000637""
000000000638""
000000000639""
000000000640""
000000000641""
000000000642""
000000000643""
000000000644""
000000000645""
000000000646""
000000000647""
000000000648""
000000000649""
000000000650""
000000000651""
000000000652""
000000000653""
000000000654""
000000000655""
000000000656""
000000000657""
000000000658""
000000000659""
000000000660""
000000000661""
000000000662""
000000000663""
000000000664""
000000000665""
000000000666""
000000000667"Character::Animate^7"
000000000668""
000000000669""
000000000670""
000000000671""
000000000672""
000000000673""
000000000674""
000000000675""
000000000676""
000000000677""
000000000678""
000000000679""
000000000680""
000000000681"Character::LockView^2"
000000000682""
000000000683""
000000000684""
000000000685""
000000000686""
000000000687""
000000000688""
000000000689""
000000000690""
000000000691"Character::SayAt^4"
000000000692""
000000000693""
000000000694""
000000000695""
000000000696""
000000000697""
000000000698""
000000000699"Character::UnlockView^1"
000000000700""
000000000701""
000000000702""
000000000703""
000000000704""
000000000705""
000000000706""
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
000000000726""
000000000727""
000000000728""
000000000729""
000000000730""
000000000731""
000000000732""
000000000733""
000000000734"Character::get_Loop"
000000000735"Character::set_Loop"
000000000736""
000000000737""
000000000738""
000000000739""
000000000740""
000000000741"Character::get_Name"
000000000742"Character::set_Name"
000000000743""
000000000744""
000000000745"Character::get_Room"
000000000746""
000000000747""
000000000748""
000000000749""
000000000750""
000000000751""
000000000752""
000000000753""
000000000754""
000000000755""
000000000756"Character::get_SpeechAnimationDelay"
000000000757"Character::set_SpeechAnimationDelay"
000000000758""
000000000759""
000000000760"Character::get_SpeechView"
000000000761"Character::set_SpeechView"
000000000762""
000000000763""
000000000764""
000000000765""
000000000766""
000000000767""
000000000768"Character::get_View"
000000000769""
000000000770""
000000000771""
000000000772""
000000000773""
000000000774""
000000000775""
000000000776""
000000000777""
000000000778""
000000000779""
000000000780""
000000000781""
000000000782""
000000000783""
000000000784""
000000000785""
000000000786""
000000000787""
000000000788""
000000000789""
000000000790""
000000000791""
000000000792""
000000000793""
000000000794""
000000000795""
000000000796""
000000000797""
000000000798""
000000000799""
000000000800""
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
000000000833""
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
000000000849""
000000000850""
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
000000000880""
000000000881""
000000000882""
000000000883""
000000000884""
000000000885""
000000000886""
000000000887""
000000000888""
000000000889""
000000000890""
000000000891""
000000000892""
000000000893""
000000000894""
000000000895""
000000000896""
000000000897""
000000000898""
000000000899""
000000000900""
000000000901""
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
000000000914""
000000000915""
000000000916""
000000000917""
000000000918""
000000000919""
000000000920""
000000000921""
000000000922""
000000000923"player"
000000000924""
000000000925""
000000000926""
000000000927""
000000000928""
000000000929""
000000000930""
000000000931""
000000000932""
000000000933""
000000000934""
000000000935""
000000000936"cClarissa"
000000000937"cMrBones"
000000000938"cIngrid"
000000000939""
000000000940"cPlumber"
000000000941""
000000000942""
000000000943""
000000000944""
000000000945""
000000000946""
000000000947""
000000000948"aIngridBloop"
000000000949"aIngridPhoneBloop"
000000000950"aPlumberBloop"
000000000951"aClarissaBloop"
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
000000000990""
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
000000001031""
000000001032""
000000001033"lblAction"
000000001034"gDialog"
000000001035"lblDialog"
000000001036""
000000001037""
000000001038""
000000001039"btnCharPoseL"
000000001040"btnCharFaceL"
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
000000001120"fastForward"
000000001121"isThinking"
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
000000001137"InDialog"
000000001138""
000000001139""
000000001140""
000000001141"chanBloop"
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
000000001539""
000000001540""
000000001541""
000000001542""
000000001543""
000000001544""
000000001545""
000000001546""
000000001547""
000000001548""
000000001549""
000000001550""
000000001551""
000000001552""
000000001553""
000000001554""
000000001555""
000000001556""
000000001557""
000000001558""
000000001559""
000000001560""
000000001561""
000000001562""
.exports
000000000000"ToSpaces$1"
1:000000000000
000000000001"Character::playBloop$0"
1:000000000172
000000000002"toggleGUI$1"
1:000000000531
000000000003"IsThisPunctuation$1"
1:000000000573
000000000004"WriteText$4"
1:000000000724
000000000005"RandomChar$1"
1:000000002613
000000000006"ReplaceText$1"
1:000000002769
000000000007"Character::Speak$2"
1:000000003607
000000000008"ClearPortraits$0"
1:000000004239
000000000009"repeatedly_execute_always$0"
1:000000004311
000000000010"setPose$2"
1:000000004427
000000000011"setFace$2"
1:000000004475
000000000012"setLeft$2"
1:000000004523
000000000013"setRight$2"
1:000000004575
000000000014"Narrate$1"
1:000000004585
000000000015"Tutorialize$1"
1:000000004768
000000000016"Dialog::StartDialog$0"
1:000000004807
000000000017"EndDialog$0"
1:000000004958
.sections
"dialog.asc" = 0

