.data
int var000000 = 0 ; unreferenced variable, assuming char
export int CountDown = 0
char[40] var000008 = 0 ; unreferenced variable, assuming char
int var000048 = 0
int var000052 = 0
int var000056 = 0
char[12] var000060 = 0 ; unreferenced variable, assuming char
.text

__CountDown::SetRawTime$1: ; 1 args
	sourceline 5
	thisaddr 0
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 7
	ptrstack 12
	memread4 ax
	push ax
	li ax, 0
	pop bx
	lt bx, ax
	mr ax, bx
	jnzi label000000000130
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 99
	push ax
	li ax, 3600
	pop bx
	mul bx, ax
	mr ax, bx
	push ax
	li ax, 59
	push ax
	li ax, 60
	pop bx
	mul bx, ax
	mr ax, bx
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	li ax, 59
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	pop bx
	mul bx, ax
	mr ax, bx
	pop bx
	gt bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000130: ; inside __CountDown::SetRawTime$1, ; referenced by 1 spots
	jzi label000000000139
	li ax, 0
	subi sp, 4
	ret 
label000000000139: ; inside __CountDown::SetRawTime$1, ; referenced by 1 spots
	sourceline 8
	ptrstack 12
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memwrite4 ax
	sourceline 9
	ptrstack 12
	memread4 ax
	push ax
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	pop bx
	div bx, ax
	mr ax, bx
	ptrstack 12
	memwrite4 ax
	sourceline 10
	ptrstack 12
	memread4 ax
	push ax
	li ax, 3600
	pop bx
	div bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	memwrite4 ax
	sourceline 11
	ptrstack 12
	memread4 ax
	push ax
	li ax, 3600
	pop bx
	mod bx, ax
	mr ax, bx
	ptrstack 12
	memwrite4 ax
	sourceline 12
	ptrstack 12
	memread4 ax
	push ax
	li ax, 60
	pop bx
	div bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memwrite4 ax
	sourceline 13
	ptrstack 12
	memread4 ax
	push ax
	li ax, 60
	pop bx
	mod bx, ax
	mr ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memwrite4 ax
	sourceline 14
	li ax, 0
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memwrite4 ax
	sourceline 15
	li ax, 0
	subi sp, 4
	ret 

TimeToGameLoops$3: ; 3 args
	sourceline 17
	thisaddr 313
	sourceline 18
	ptrstack 16
	memread4 ax
	push ax
	li ax, 3600
	pop bx
	mul bx, ax
	mr ax, bx
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 60
	pop bx
	mul bx, ax
	mr ax, bx
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	setfuncargs 0
	li ax, GetGameSpeed
	farcall ax
	pop bx
	mul bx, ax
	mr ax, bx
	ret 
	sourceline 19
	li ax, 0
	ret 

__CountDown::SetTime$3: ; 3 args
	sourceline 21
	thisaddr 401
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 22
	push op
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, TimeToGameLoops$3
	call ax
	subi sp, 12
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, __CountDown::SetRawTime$1
	call ax
	subi sp, 4
	pop op
	subi sp, 4
	ret 
	sourceline 23
	li ax, 0
	subi sp, 4
	ret 

__CountDown::Pause$1: ; 1 args
	sourceline 25
	thisaddr 478
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 26
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	not ax
	jzi label000000000514
	li ax, 0
	subi sp, 4
	ret 
label000000000514: ; inside __CountDown::Pause$1, ; referenced by 1 spots
	sourceline 27
	ptrstack 12
	memread4 ax
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memwrite4 ax
	sourceline 28
	li ax, 1
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memwrite4 ax
	sourceline 29
	li ax, 0
	subi sp, 4
	ret 

__CountDown::UnPause$0: ; 0 args
	sourceline 31
	thisaddr 554
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 32
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	not ax
	jzi label000000000590
	li ax, 0
	subi sp, 4
	ret 
label000000000590: ; inside __CountDown::UnPause$0, ; referenced by 1 spots
	sourceline 33
	li ax, -1
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memwrite4 ax
	sourceline 34
	li ax, 0
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memwrite4 ax
	sourceline 35
	li ax, 0
	subi sp, 4
	ret 

__CountDown::Stop$0: ; 0 args
	sourceline 37
	thisaddr 629
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 38
	li ax, -1
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memwrite4 ax
	sourceline 39
	li ax, 1
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memwrite4 ax
	sourceline 40
	li ax, 0
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memwrite4 ax
	sourceline 41
	li ax, 0
	push op
	pop mar
	ptrassert 
	memwrite4 ax
	sourceline 42
	li ax, 0
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memwrite4 ax
	sourceline 43
	li ax, 0
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memwrite4 ax
	sourceline 44
	li ax, 0
	subi sp, 4
	ret 

game_start$0: ; 0 args
	sourceline 46
	thisaddr 738
	sourceline 47
	push op
	li mar, @CountDown
	mr ax, mar
	callobj ax
	li ax, __CountDown::Stop$0
	call ax
	pop op
	sourceline 48
	li ax, -1
	li mar, @var000048
	memwrite4 ax
	sourceline 49
	li ax, 31998
	li mar, @var000052
	memwrite4 ax
	sourceline 50
	li ax, 31998
	li mar, @var000056
	memwrite4 ax
	sourceline 51
	li ax, 0
	ret 

__CountDown::Update$1: ; 1 args
	sourceline 53
	thisaddr 797
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 54
	setfuncargs 0
	li ax, IsGamePaused
	farcall ax
	jzi label000000000841
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 32
	memread4 ax
	pop bx
	land bx, ax
	mr ax, bx
label000000000841: ; inside __CountDown::Update$1, ; referenced by 1 spots
	jzi label000000000871
	push op
	li ax, -2
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, __CountDown::Pause$1
	call ax
	subi sp, 4
	pop op
	jmpi label000000000916
label000000000871: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 55
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	li ax, -2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000000916
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, __CountDown::UnPause$0
	call ax
	pop op
label000000000916: ; inside __CountDown::Update$1, ; referenced by 2 spots
	sourceline 56
	ptrstack 12
	memread4 ax
	not ax
	jzi label000000000948
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000000948: ; inside __CountDown::Update$1, ; referenced by 1 spots
	jzi label000000000972
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000000972: ; inside __CountDown::Update$1, ; referenced by 1 spots
	jzi label000000001239
	sourceline 57
	push op
	pop mar
	ptrassert 
	addi mar, 40
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000001114
	sourceline 58
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000001085
	push op
	push op
	pop mar
	ptrassert 
	addi mar, 40
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 36
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::Say^101
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000001114
label000000001085: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 59
	push op
	pop mar
	ptrassert 
	addi mar, 40
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
label000000001114: ; inside __CountDown::Update$1, ; referenced by 2 spots
	sourceline 61
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000001206
	push op
	li ax, 31998
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 52
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 48
	memread4 ax
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 44
	memread4 ax
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 4
	li ax, Character::ChangeRoom^4
	farcall ax
	farsubsp 4
	pop op
label000000001206: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 62
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, __CountDown::Stop$0
	call ax
	pop op
	sourceline 63
	li ax, 0
	subi sp, 4
	ret 
	sourceline 64
	jmpi label000000001256
label000000001239: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 65
	ptrstack 12
	memread4 ax
	not ax
	jzi label000000001256
	li ax, 0
	subi sp, 4
	ret 
label000000001256: ; inside __CountDown::Update$1, ; referenced by 2 spots
	sourceline 66
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	not ax
	jzi label000000001336
	sourceline 67
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	jzi label000000001332
	push op
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, __CountDown::SetRawTime$1
	call ax
	subi sp, 4
	pop op
label000000001332: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 68
	jmpi label000000001414
label000000001336: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 69
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001380
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	subi ax, 1
	memwrite4 ax
	jmpi label000000001414
label000000001380: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 70
	push op
	pop mar
	ptrassert 
	addi mar, 20
	memread4 ax
	not ax
	jzi label000000001414
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, __CountDown::UnPause$0
	call ax
	pop op
label000000001414: ; inside __CountDown::Update$1, ; referenced by 3 spots
	sourceline 71
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000003098
	sourceline 72
	push op
	pop mar
	ptrassert 
	addi mar, 64
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000001544
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 64
	push mar
	pop mar
	ptrget ax
	pop bx
	strne bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000001544: ; inside __CountDown::Update$1, ; referenced by 1 spots
	jzi label000000001596
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 60
	push mar
	pop mar
	ptrset ax
	jmpi label000000001689
label000000001596: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 73
	push op
	pop mar
	ptrassert 
	addi mar, 60
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000001689
	push op
	pop mar
	ptrassert 
	addi mar, 60
	push mar
	pop mar
	ptrget ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
label000000001689: ; inside __CountDown::Update$1, ; referenced by 2 spots
	sourceline 74
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	not ax
	jzi label000000002672
	sourceline 75
	push op
	li ax, 0
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	farpush ax
	li ax, "%d"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	assert ax
	farpush ax
	li ax, "RAWTIME"
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 76
	push op
	li ax, 0
	farpush ax
	push op
	pop mar
	ptrassert 
	memread4 ax
	farpush ax
	li ax, "%02d"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	assert ax
	farpush ax
	li ax, "HH"
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 77
	push op
	li ax, 1
	farpush ax
	push op
	pop mar
	ptrassert 
	memread4 ax
	farpush ax
	li ax, "%d"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	assert ax
	farpush ax
	li ax, "H"
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 78
	push op
	li ax, 0
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memread4 ax
	farpush ax
	li ax, "%02d"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	assert ax
	farpush ax
	li ax, "MM"
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 79
	push op
	li ax, 1
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 4
	memread4 ax
	farpush ax
	li ax, "%d"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	assert ax
	farpush ax
	li ax, "M"
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 80
	push op
	li ax, 0
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	farpush ax
	li ax, "%02d"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	assert ax
	farpush ax
	li ax, "SS"
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 81
	push op
	li ax, 1
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 8
	memread4 ax
	farpush ax
	li ax, "%d"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	assert ax
	farpush ax
	li ax, "S"
	farpush ax
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	callobj ax
	setfuncargs 3
	li ax, String::Replace^3
	farcall ax
	farsubsp 3
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
label000000002672: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 83
	push op
	pop mar
	ptrassert 
	addi mar, 56
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Label::get_Text
	farcall ax
	pop op
	push op
	pop mar
	ptrassert 
	addi mar, 64
	push mar
	pop mar
	ptrset ax
	sourceline 84
	push op
	pop mar
	ptrassert 
	addi mar, 24
	memread4 ax
	jzi label000000002758
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 12
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002758: ; inside __CountDown::Update$1, ; referenced by 1 spots
	jzi label000000002843
	li ax, 0
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, GUIControl::get_OwningGUI
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
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000003045
label000000002843: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 85
	push op
	pop mar
	ptrassert 
	addi mar, 28
	memread4 ax
	jzi label000000002877
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 16
	memread4 ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002877: ; inside __CountDown::Update$1, ; referenced by 1 spots
	jzi label000000002962
	li ax, 0
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, GUIControl::get_OwningGUI
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
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000003045
label000000002962: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 86
	li ax, 1
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, GUIControl::get_OwningGUI
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
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000003045: ; inside __CountDown::Update$1, ; referenced by 2 spots
	sourceline 87
	li ax, 1
	push op
	pop mar
	ptrassert 
	addi mar, 56
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
	li ax, GUIControl::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000003098: ; inside __CountDown::Update$1, ; referenced by 1 spots
	sourceline 89
	li ax, 0
	subi sp, 4
	ret 

repeatedly_execute_always$0: ; 0 args
	sourceline 91
	thisaddr 3107
	sourceline 92
	push op
	li ax, 1
	push ax
	li mar, @CountDown
	mr ax, mar
	callobj ax
	li ax, __CountDown::Update$1
	call ax
	subi sp, 4
	pop op
	sourceline 93
	li ax, 0
	ret 

repeatedly_execute$0: ; 0 args
	sourceline 95
	thisaddr 3144
	sourceline 96
	push op
	li ax, 0
	push ax
	li mar, @CountDown
	mr ax, mar
	callobj ax
	li ax, __CountDown::Update$1
	call ax
	subi sp, 4
	pop op
	sourceline 97
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
"__NEWSCRIPTSTART_CountDown.asc"
"RAWTIME"
"%d"
"HH"
"%02d"
"H"
"%d"
"MM"
"%02d"
"M"
"%d"
"SS"
"%02d"
"S"
"%d"
.imports
000000000000"String::Format^101"
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
000000000014"String::Replace^3"
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
000000000090"Display"
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
000000000123"IsGamePaused"
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
000000000165""
000000000166""
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
000000000254""
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
000000000279""
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
000000000314"GUIControl::get_OwningGUI"
000000000315"GUIControl::get_Visible"
000000000316"GUIControl::set_Visible"
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
000000000343""
000000000344""
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
000000000501""
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
000000000667""
000000000668"Character::ChangeRoom^4"
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
000000000681""
000000000682""
000000000683""
000000000684""
000000000685""
000000000686""
000000000687""
000000000688""
000000000689""
000000000690"Character::Say^101"
000000000691""
000000000692""
000000000693""
000000000694""
000000000695""
000000000696""
000000000697""
000000000698""
000000000699""
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
000000000734""
000000000735""
000000000736""
000000000737""
000000000738""
000000000739""
000000000740""
000000000741""
000000000742""
000000000743""
000000000744""
000000000745""
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
000000000756""
000000000757""
000000000758""
000000000759""
000000000760""
000000000761""
000000000762""
000000000763""
000000000764""
000000000765""
000000000766""
000000000767""
000000000768""
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
.exports
000000000000"CountDown"
2:000000000004
000000000001"__CountDown::SetRawTime$1"
1:000000000000
000000000002"TimeToGameLoops$3"
1:000000000313
000000000003"__CountDown::SetTime$3"
1:000000000401
000000000004"__CountDown::Pause$1"
1:000000000478
000000000005"__CountDown::UnPause$0"
1:000000000554
000000000006"__CountDown::Stop$0"
1:000000000629
000000000007"game_start$0"
1:000000000738
000000000008"__CountDown::Update$1"
1:000000000797
000000000009"repeatedly_execute_always$0"
1:000000003107
000000000010"repeatedly_execute$0"
1:000000003144
.sections
"CountDown.asc" = 0

