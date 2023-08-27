.data
int var000000 = 0 ; unreferenced variable, assuming char
export char targetContainer = 0
char[35] var000005 = 0 ; unreferenced variable, assuming char
.text

_run_dialog_request$1: ; 1 args
	sourceline 10
	thisaddr 0
	sourceline 11
	li ax, 1
	li mar, game
	addi mar, 492
	memwrite4 ax
	sourceline 12
	ptrstack 8
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, dialog_request
	farcall ax
	farsubsp 1
	sourceline 14
	li mar, game
	addi mar, 492
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000000078
	sourceline 15
	li ax, 0
	li mar, game
	addi mar, 492
	memwrite4 ax
	sourceline 16
	li ax, -2
	ret 
label000000000078: ; inside _run_dialog_request$1, ; referenced by 1 spots
	sourceline 18
	li mar, game
	addi mar, 492
	memread4 ax
	push ax
	li ax, 12000
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000000162
	sourceline 19
	li mar, game
	addi mar, 492
	memread4 ax
	push ax
	li ax, 12000
	pop bx
	sub bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 20
	li ax, 0
	li mar, game
	addi mar, 492
	memwrite4 ax
	sourceline 21
	ptrstack 4
	memread4 ax
	subi sp, 4
	ret 
	sourceline 22
	subi sp, 4
label000000000162: ; inside _run_dialog_request$1, ; referenced by 1 spots
	sourceline 23
	li mar, game
	addi mar, 492
	memread4 ax
	push ax
	li ax, 100
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000000292
	sourceline 24
	li mar, game
	addi mar, 492
	memread4 ax
	push ax
	li ax, 100
	pop bx
	sub bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 25
	li ax, 0
	li mar, game
	addi mar, 492
	memwrite4 ax
	sourceline 26
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	ptrstack 8
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
	sourceline 27
	li ax, -2
	subi sp, 4
	ret 
	sourceline 28
	subi sp, 4
label000000000292: ; inside _run_dialog_request$1, ; referenced by 1 spots
	sourceline 29
	li ax, 0
	li mar, game
	addi mar, 492
	memwrite4 ax
	sourceline 30
	li ax, -1
	ret 
	sourceline 31
	li ax, 0
	ret 

_run_dialog1$1: ; 1 args
	sourceline 1
	thisaddr 317
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002100
	sourceline 3
	li ax, 0
	li mar, BathroomLightOn
	memwrite4 ax
	sourceline 4
	li ax, 0
	setfuncargs 0
	li ax, Game::get_InSkippableCutscene
	farcall ax
	not ax
	jzi label000000000382
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
label000000000382: ; inside _run_dialog1$1, ; referenced by 1 spots
	sourceline 6
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
	sourceline 7
	li ax, 0
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 8
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 10
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_x
	farcall ax
	pop op
	li mar, clarX
	memwrite4 ax
	sourceline 11
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_y
	farcall ax
	pop op
	li mar, clarY
	memwrite4 ax
	sourceline 12
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_z
	farcall ax
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 14
	li ax, 160
	mr bx, ax
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_x
	farcall ax
	farsubsp 1
	pop op
	sourceline 15
	li ax, 240
	mr bx, ax
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_y
	farcall ax
	farsubsp 1
	pop op
	sourceline 16
	li ax, 1000
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
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 17
	li ax, 1000
	ptrstack 8
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
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 20
	li ax, 74
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
	sourceline 21
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 25
	push op
	li ax, 1
	farpush ax
	li ax, 9
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 26
	li ax, 160
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 28
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 4
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 29
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 32
	li ax, 0
	ptrstack 8
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
	sourceline 33
	push op
	li ax, 1
	farpush ax
	li ax, 10
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 35
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 36
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 39
	li mar, chanAmbientB
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000001102
	push op
	li mar, chanAmbientB
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000001102: ; inside _run_dialog1$1, ; referenced by 1 spots
	sourceline 42
	li mar, chanAmbientC
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000001150
	push op
	li mar, chanAmbientC
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000001150: ; inside _run_dialog1$1, ; referenced by 1 spots
	sourceline 45
	li ax, 0
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 46
	li ax, 19
	push ax
	li ax, 1
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 47
	li ax, 13
	push ax
	li ax, 2
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 48
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 8
	farpush ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 49
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
	li ax, 60
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 50
	li ax, 1
	li mar, BathroomLightOn
	memwrite4 ax
	sourceline 52
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000001424
	push op
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000001424: ; inside _run_dialog1$1, ; referenced by 1 spots
	sourceline 55
	push op
	li ax, 1
	farpush ax
	li ax, 50
	farpush ax
	li mar, aBathLoop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbient
	push mar
	pop mar
	ptrset ax
	sourceline 56
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li mar, aLightswitch
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 63
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 64
	li ax, 1
	ptrstack 8
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
	sourceline 67
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 68
	push op
	li ax, 1
	farpush ax
	li ax, 11
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 70
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 71
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
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 72
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 75
	li ax, 120
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 78
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 10
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 79
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 80
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 81
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 84
	li ax, 1
	mr bx, ax
	li mar, mouse
	mr ax, mar
	farpush bx
	setfuncargs 1
	li ax, Mouse::set_Visible
	farcall ax
	farsubsp 1
	sourceline 85
	li ax, 1
	mr bx, ax
	li mar, gActionBar
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 86
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li mar, aBGM_Four_Standard
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanBGM
	push mar
	pop mar
	ptrset ax
	sourceline 87
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 88
	li ax, 2
	ptrstack 12
	ptrzerond 
	ptrstack 8
	ptrzerond 
	subi sp, 12
	ret 
	ptrstack 12
	ptrzero 
	ptrstack 8
	ptrzero 
	subi sp, 12
label000000002100: ; inside _run_dialog1$1, ; referenced by 1 spots
	sourceline 89
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog2$1: ; 1 args
	sourceline 1
	thisaddr 2110
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002413
	sourceline 3
	li ax, 1
	li mar, InDialog
	memwrite4 ax
	sourceline 4
	li ax, 1
	mr bx, ax
	li mar, mouse
	mr ax, mar
	farpush bx
	setfuncargs 1
	li ax, Mouse::set_Visible
	farcall ax
	farsubsp 1
	sourceline 7
	push op
	li mar, aBathLoop
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 8
	push op
	li ax, 1
	farpush ax
	li ax, 50
	farpush ax
	li mar, aBathLoop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbient
	push mar
	pop mar
	ptrset ax
	sourceline 9
	push op
	li ax, 0
	farpush ax
	li ax, "What the hell...\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	li ax, "What\'s wrong with the water\? It\'s red, and gooey... and..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 11
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	li ax, "Ugh smells TERRIBLE in here."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 13
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	push op
	li ax, 0
	farpush ax
	li ax, "That can\'t be blood. Can it\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 15
	li ax, -1
	ret 
	jmpi label000000004549
label000000002413: ; inside _run_dialog2$1, ; referenced by 1 spots
	sourceline 17
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002914
	sourceline 18
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 19
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 0
	farpush ax
	li ax, "Did I-\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 21
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 22
	li ax, "No. Don\'t be stupid, Clarissa. You know what you did last night."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 23
	li ax, "Six hours minding the store. An extra two hours past close, cleaning up after those brats."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 24
	li ax, "Then bed."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 25
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 26
	li ax, "There\'s no room for... for murderous blackouts in that timeline."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 27
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 28
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 30
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 31
	li ax, "Maybe I\'ll check the store security footage later. Just in case."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 32
	push op
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 2
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
	push op
	li ax, 1
	farpush ax
	li ax, 2
	farpush ax
	li ax, 2
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 34
	li ax, -1
	ret 
	jmpi label000000004549
label000000002914: ; inside _run_dialog2$1, ; referenced by 1 spots
	sourceline 36
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003340
	sourceline 37
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 38
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 39
	li ax, "Come to think of it, it\'s been- what, 18 hours since I was in here\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 40
	push op
	li ax, 0
	farpush ax
	li ax, "Someone could have sneaked past me in that time."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 41
	push op
	li ax, 0
	farpush ax
	li ax, "%a And died\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 42
	push op
	li ax, 0
	farpush ax
	li ax, "%a In my bathroom."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 43
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 44
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 45
	push op
	li ax, 0
	farpush ax
	li ax, "What am I even saying."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 46
	li ax, "You would\'ve noticed if your apartment was unlocked. You would\'ve noticed the smell, too."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 47
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 48
	li ax, "Besides, there\'s no body. And one person couldn\'t bleed *this* much."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 49
	push op
	li ax, 1
	farpush ax
	li ax, 3
	farpush ax
	li ax, 2
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 50
	li ax, -1
	ret 
	jmpi label000000004549
label000000003340: ; inside _run_dialog2$1, ; referenced by 1 spots
	sourceline 52
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003675
	sourceline 53
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 54
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 55
	push op
	li ax, 0
	farpush ax
	li ax, "How many other stores are on this pipeline\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 56
	li ax, "Maybe someone dumped a litre of paint down their sink\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 57
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 58
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 59
	push op
	li ax, 0
	farpush ax
	li ax, "Sure doesn\'t smell like paint..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 60
	push op
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 2
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 61
	push op
	li ax, 1
	farpush ax
	li ax, 4
	farpush ax
	li ax, 2
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 62
	li ax, -1
	ret 
	jmpi label000000004549
label000000003675: ; inside _run_dialog2$1, ; referenced by 1 spots
	sourceline 64
	ptrstack 8
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000004136
	sourceline 65
	push op
	li ax, 0
	farpush ax
	li ax, "It can\'t be real blood. It just can\'t."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 66
	push op
	li ax, 0
	farpush ax
	li ax, "%a So then... what is it\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 67
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 68
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 69
	li ax, "Maybe it\'s some kind of rust\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 70
	li ax, "Or fungus\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 71
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 72
	li ax, "I doubt the council\'s checked the main in some time."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 73
	li ax, "It could be a buildup of plant or dirt."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 74
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 75
	li ax, "Extremely red dirt."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 76
	li ax, "..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 77
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 78
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 79
	li ax, "The pipes have been creakier than usual lately..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 80
	push op
	li ax, 1
	farpush ax
	li ax, 6
	farpush ax
	li ax, 2
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 81
	li ax, -1
	ret 
	jmpi label000000004549
label000000004136: ; inside _run_dialog2$1, ; referenced by 1 spots
	sourceline 84
	ptrstack 8
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000004165
	sourceline 85
	li ax, -1
	ret 
	jmpi label000000004549
label000000004165: ; inside _run_dialog2$1, ; referenced by 1 spots
	sourceline 87
	ptrstack 8
	memread4 ax
	push ax
	li ax, 6
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000004549
	sourceline 88
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 89
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 90
	li ax, "Okay. Standing around gawking doesn\'t change the fact I need a shower."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 91
	li ax, "I can deal with a blockage. I might have to skip breakfast, but--"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 92
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aPhoneRingMuffled
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 93
	push op
	li ax, "*RING RING*"
	farpush ax
	li mar, cPhone
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::Say^101
	farcall ax
	farsubsp 1
	pop op
	sourceline 94
	li ax, 5
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 95
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 96
	push op
	li ax, 0
	farpush ax
	li ax, "Huh\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 97
	li ax, "Who could it be at this hour\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 98
	li ax, 0
	li mar, leavingRoom
	memwrite4 ax
	sourceline 99
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 100
	li ax, 1
	li mar, PhoneRinging
	memwrite4 ax
	sourceline 101
	li ax, 160
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	sourceline 103
	li mar, PlayingInBrowser
	memread4 ax
	jzi label000000004543
	li ax, 1
	mr bx, ax
	li mar, gHTMLIcons
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000004543: ; inside _run_dialog2$1, ; referenced by 1 spots
	sourceline 105
	li ax, -2
	ret 
label000000004549: ; inside _run_dialog2$1, ; referenced by 7 spots
	sourceline 106
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog3$1: ; 1 args
	sourceline 1
	thisaddr 4559
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006033
	sourceline 3
	li ax, 0
	li mar, PhoneRinging
	memwrite4 ax
	sourceline 4
	li ax, "\?\?\?"
	newstr ax
	mr bx, ax
	li mar, cIngrid
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_Name
	farcall ax
	farsubsp 1
	pop op
	sourceline 5
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 6
	push op
	li ax, 0
	farpush ax
	li ax, "...Video Nine. Clarissa speaking."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	push op
	li ax, 0
	farpush ax
	li ax, "Ms. Dunst\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 9
	li ax, "Ingrid"
	newstr ax
	mr bx, ax
	li mar, cIngrid
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_Name
	farcall ax
	farsubsp 1
	pop op
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, "Ingrid\? It\'s four in the morning. Why are you awake\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 11
	push op
	li ax, 0
	farpush ax
	li ax, "Uhh, yeah, so... You said we\'re supposed to give, like, two hours notice if we can\'t come in. Right\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, "That\'s true. Yes."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 13
	push op
	li ax, 0
	farpush ax
	li ax, "Awesome. \'Cause I got food poisoning. REAL bad. Shittin\' everywhere."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	push op
	li ax, 0
	farpush ax
	li ax, "Sooo I kinda can\'t open today. Sorry."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 15
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 16
	push op
	li ax, 0
	farpush ax
	li ax, "You\'re lying to me."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 17
	push op
	li ax, 0
	farpush ax
	li ax, "I\'m lying to you."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 18
	push op
	li ax, 0
	farpush ax
	li ax, "Let me guess. You forgot to study."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, "Yeah the exam is in like eight hours."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 0
	farpush ax
	li ax, "Right. Go to sleep."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 21
	push op
	li ax, 0
	farpush ax
	li ax, "How about YOU go to sleep\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 22
	push op
	li ax, 0
	farpush ax
	li ax, "I have a store to run and a shower to fix, Ingrid."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 23
	push op
	li ax, 0
	farpush ax
	li ax, "Oh yeah, hahaha."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 24
	push op
	li ax, 0
	farpush ax
	li ax, "Wait what\'s wrong with your shower\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 25
	push op
	li ax, 0
	farpush ax
	li ax, "I don\'t know. The tub\'s drain is clogged and there\'s all this red liquid in it."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 26
	push op
	li ax, 0
	farpush ax
	li ax, "Red\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 0
	farpush ax
	li ax, "Blood red."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	push op
	li ax, 0
	farpush ax
	li ax, "Sooo... did flushing the body down the toilet not work, orrrr..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 30
	push op
	li ax, 0
	farpush ax
	li ax, "Ingrid."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 31
	push op
	li ax, 0
	farpush ax
	li ax, "Kidding! Jeez. But seriously that\'s spooky."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 32
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s annoying is what it is."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
	push op
	li ax, 0
	farpush ax
	li ax, "Maybe it\'s a..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 34
	push op
	li ax, 0
	farpush ax
	li ax, "Don\'t."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 35
	push op
	li ax, 0
	farpush ax
	li ax, "A..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 36
	push op
	li ax, 0
	farpush ax
	li ax, "%a G-g-g-ghooooooooooooooooost!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 37
	push op
	li ax, 0
	farpush ax
	li ax, "How about we blame Sadako AFTER a plumber rules everything else out."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 38
	push op
	li ax, 0
	farpush ax
	li ax, "A plumber\? Before midday\? Yeah good luck with that."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 39
	push op
	li ax, 0
	farpush ax
	li ax, "Hey, call me if anything weird happens, will you\? I\'m invested now."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 40
	push op
	li ax, 0
	farpush ax
	li ax, "Plus if I don\'t take a break every five minutes I think my head will explode."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 41
	push op
	li ax, 0
	farpush ax
	li ax, "I\'ll think about it."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 42
	push op
	li ax, 0
	farpush ax
	li ax, "%a Good night, Ingrid."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 43
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aHangUp
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 44
	li ax, "*Click*"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 45
	li ax, "*Sigh* It would be nice to have someone my own age to call for advice, but I suppose Ingrid will do."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 46
	li ax, "Besides. If she\'s hellbent on pulling an all-nighter, I guess I can\'t make that any worse."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 48
	li ax, 480
	farpush ax
	li ax, 2
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	sourceline 49
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 50
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 51
	li ax, -2
	ret 
label000000006033: ; inside _run_dialog3$1, ; referenced by 1 spots
	sourceline 52
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog4$1: ; 1 args
	sourceline 1
	thisaddr 6043
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006292
	sourceline 4
	li ax, 2
	farpush ax
	setfuncargs 1
	li ax, IsTimerExpired
	farcall ax
	farsubsp 1
	not ax
	jzi label000000006188
	sourceline 5
	push op
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 4
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 6
	push op
	li ax, 1
	farpush ax
	li ax, 2
	farpush ax
	li ax, 4
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	jmpi label000000006284
label000000006188: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 9
	push op
	li ax, 1
	farpush ax
	li ax, 1
	farpush ax
	li ax, 4
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 4
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000006284: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 12
	li ax, -1
	ret 
	jmpi label000000007870
label000000006292: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 15
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007607
	sourceline 16
	li mar, IngridCounter
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006475
	sourceline 17
	push op
	li ax, 0
	farpush ax
	li ax, "Zheng residence, Zheng speaking."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 18
	push op
	li ax, 0
	farpush ax
	li ax, "Hi Ingrid. I must say, your phone manner has really improved these past few months."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, "%a ...Even if it\'s still a tad redundant."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 0
	farpush ax
	li ax, "Yeah yeah yeah. Whaddya want\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000006475: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 23
	li mar, IngridCounter
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006742
	sourceline 24
	push op
	li ax, 0
	farpush ax
	li ax, "Me again."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 25
	push op
	li ax, 0
	farpush ax
	li ax, "Figured. Hey do you know if there\'s a way to, like, make the ringer quieter\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 26
	push op
	li ax, 0
	farpush ax
	li ax, "%a I don\'t want mum to think I\'m sellin\' meth again."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 0
	farpush ax
	li ax, "That raises several questions."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 0
	farpush ax
	li ax, "Her logic is real weird and only gets worse when she hasn\'t slept right."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	push op
	li ax, 0
	farpush ax
	li ax, "Hm. Try covering it with a pillow."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 30
	push op
	li ax, 0
	farpush ax
	li ax, "Will do. Anyway what\'s up\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000006742: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 33
	li mar, IngridCounter
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006939
	sourceline 34
	push op
	li ax, 0
	farpush ax
	li ax, "Hi, Ingrid. Got some-"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 35
	push op
	li ax, 0
	farpush ax
	li ax, "Dude you are echoing a LOT. Is there somethin\' wrong with th-"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 36
	push op
	li ax, 0
	farpush ax
	li ax, "%a Wait, do you keep your landline in the bathroom\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 37
	push op
	li ax, 0
	farpush ax
	li ax, "Shut up."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 38
	push op
	li ax, 0
	farpush ax
	li ax, "You need to relax more. Anyway, what happened this time\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000006939: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 41
	li mar, IngridCounter
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007136
	sourceline 42
	push op
	li ax, 0
	farpush ax
	li ax, "Hey Ingr%DONTWAIT"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 43
	push op
	li ax, 0
	farpush ax
	li ax, "THIRTY-SEVEN."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 44
	push op
	li ax, 0
	farpush ax
	li ax, "Huh\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 45
	push op
	li ax, 0
	farpush ax
	li ax, "Sorry I mean hi. I got distracted by the prac. That\'s been buggin\' me for an hour."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 46
	push op
	li ax, 0
	farpush ax
	li ax, "What were you gonna say\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000007136: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 49
	li mar, IngridCounter
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007298
	sourceline 50
	push op
	li ax, 0
	farpush ax
	li ax, "Good - *YAWN* - morning. Zheng residence."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 51
	push op
	li ax, 0
	farpush ax
	li ax, "I appreciate the upkeep of phone formalities."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 52
	push op
	li ax, 0
	farpush ax
	li ax, "Hahaha... yeah. Might\'ve asked a wrong number for some coffee powder to snort a few minutes ago..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 53
	push op
	li ax, 0
	farpush ax
	li ax, "So, what did you need\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000007298: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 56
	li mar, IngridCounter
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007495
	sourceline 57
	push op
	li ax, 0
	farpush ax
	li ax, "Zheng talking."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 58
	push op
	li ax, 0
	farpush ax
	li ax, "...Ingrid, you sound exhausted. Go to sleep."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 59
	push op
	li ax, 0
	farpush ax
	li ax, "How\'m I gonna do that if you keep ringing me\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 60
	push op
	li ax, 0
	farpush ax
	li ax, "Then I\'ll stop."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 61
	push op
	li ax, 0
	farpush ax
	li ax, "Please no I have algebra to burn into my eyeballs."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000007495: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 65
	li mar, IngridCounter
	memread4 ax
	push ax
	li ax, 6
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000007587
	sourceline 66
	push op
	li ax, 0
	farpush ax
	li ax, "Zheng household, Ingrid speakin\'."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 67
	push op
	li ax, 0
	farpush ax
	li ax, "Hi again. There\'s something I wanted to ask you."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000007587: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 70
	li mar, IngridCounter
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 71
	li ax, 5
	ret 
	jmpi label000000007870
label000000007607: ; inside _run_dialog4$1, ; referenced by 1 spots
	sourceline 74
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007870
	sourceline 75
	push op
	li ax, 0
	farpush ax
	li ax, "...Hellooooo\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 76
	push op
	li ax, 0
	farpush ax
	li ax, "Hi, Ingrid. Me again."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 77
	push op
	li ax, 0
	farpush ax
	li ax, "Jeez Ms. D. I, like, JUST put the phone down."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 78
	push op
	li ax, 0
	farpush ax
	li ax, "%a Anyway what\'s up\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 79
	push op
	li ax, 1
	farpush ax
	li ax, 1
	farpush ax
	li ax, 4
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 80
	push op
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 4
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 81
	li ax, 5
	ret 
label000000007870: ; inside _run_dialog4$1, ; referenced by 3 spots
	sourceline 82
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog5$1: ; 1 args
	sourceline 1
	thisaddr 7880
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007913
	sourceline 3
	li ax, -1
	ret 
	jmpi label000000009165
label000000007913: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 6
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007977
	sourceline 7
	push op
	li ax, 0
	farpush ax
	li ax, "I could use your perspective on something."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 8
	li ax, 7
	ret 
	jmpi label000000009165
label000000007977: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 11
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008601
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, "How is your studying going\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 13
	push op
	li ax, 0
	farpush ax
	li ax, "Ugh. Next question."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	push op
	li ax, 0
	farpush ax
	li ax, "All right. Why did you leave it to the last second again\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 15
	push op
	li ax, 0
	farpush ax
	li ax, "Dude do you know how hard it is trying to get quiet time in this house\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 16
	push op
	li ax, 0
	farpush ax
	li ax, "The AM\'s are like, the only time I\'m NOT working and mum ISN\'T breathing down my neck."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 17
	push op
	li ax, 0
	farpush ax
	li ax, "Maybe you\'re right. Maybe I shoulda just gone to bed."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 18
	push op
	li ax, 0
	farpush ax
	li ax, "Don\'t say that."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s not like a few hours are gonna fu--"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 0
	farpush ax
	li ax, "%a effin\'... make my ENTER go up."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 21
	push op
	li ax, 0
	farpush ax
	li ax, "You sure you don\'t want me to come over\? Sounds like less of a waste of time than%DW"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 22
	push op
	li ax, 0
	farpush ax
	li ax, "*No.*"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 23
	push op
	li ax, 0
	farpush ax
	li ax, "%a No."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 24
	push op
	li ax, 0
	farpush ax
	li ax, "You are not throwing your grades away just to help me fix a pipe."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 25
	push op
	li ax, 0
	farpush ax
	li ax, "Okay, okay! Sheesh."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 26
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 0
	farpush ax
	li ax, "So... you got any tips for calculatin\' the median circumference of a teenager\'s skull\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 0
	farpush ax
	li ax, "I\'ll get back to you."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	li ax, -1
	ret 
	jmpi label000000009165
label000000008601: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 31
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008630
	sourceline 32
	li ax, -1
	ret 
	jmpi label000000009165
label000000008630: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 33
	ptrstack 8
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008659
	sourceline 34
	li ax, -1
	ret 
	jmpi label000000009165
label000000008659: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 36
	ptrstack 8
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009165
	sourceline 37
	push op
	li ax, 0
	farpush ax
	li ax, "I should go."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 39
	li ax, 5
	farpush ax
	setfuncargs 1
	li ax, Random
	farcall ax
	farsubsp 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 41
	ptrstack 4
	memread4 ax
	mr bx, ax
	jmpi label000000009004
label000000008750: ; inside _run_dialog5$1, ; referenced by 5 spots
	jmpi label000000009090
label000000008752: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 43
	push op
	li ax, 0
	farpush ax
	li ax, "Good luck in there, Venkmann!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 44
	li ax, 0
	jmpi label000000008750
label000000008794: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 47
	push op
	li ax, 0
	farpush ax
	li ax, "Don\'t slip n\' crack your head on a toilet bowl!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 48
	li ax, 0
	jmpi label000000008750
label000000008836: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 51
	push op
	li ax, 0
	farpush ax
	li ax, "You know where to find me, Mario Bro."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 52
	li ax, 0
	jmpi label000000008750
label000000008878: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 55
	push op
	li ax, 0
	farpush ax
	li ax, "Say hi to the ghouls for me!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 56
	li ax, 0
	jmpi label000000008750
label000000008920: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 59
	push op
	li ax, 0
	farpush ax
	li ax, "Don\'t get possessed!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 60
	li ax, 0
	jmpi label000000008750
label000000008962: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 63
	push op
	li ax, 0
	farpush ax
	li ax, "Exorcise safe!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 64
	li ax, 0
	jmpi label000000009090
label000000009004: ; inside _run_dialog5$1, ; referenced by 1 spots
	sourceline 66
	sourceline 42
	push bx
	li ax, 0
	pop bx
	cmpne ax, bx
	jzi label000000008752
	sourceline 46
	push bx
	li ax, 1
	pop bx
	cmpne ax, bx
	jzi label000000008794
	sourceline 50
	push bx
	li ax, 2
	pop bx
	cmpne ax, bx
	jzi label000000008836
	sourceline 54
	push bx
	li ax, 3
	pop bx
	cmpne ax, bx
	jzi label000000008878
	sourceline 58
	push bx
	li ax, 4
	pop bx
	cmpne ax, bx
	jzi label000000008920
	sourceline 62
	push bx
	li ax, 5
	pop bx
	cmpne ax, bx
	jzi label000000008962
label000000009090: ; inside _run_dialog5$1, ; referenced by 2 spots
	sourceline 68
	li ax, 480
	farpush ax
	li ax, 2
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
	sourceline 69
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aHangUp
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 70
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 71
	li ax, -2
	subi sp, 4
	ret 
	subi sp, 4
label000000009165: ; inside _run_dialog5$1, ; referenced by 6 spots
	sourceline 72
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog7$1: ; 1 args
	sourceline 1
	thisaddr 9175
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009584
	sourceline 4
	li mar, GotDuck
	memread4 ax
	jzi label000000009255
	push op
	li ax, 1
	farpush ax
	li ax, 4
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000009255: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 7
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000009384
	sourceline 8
	push op
	li ax, 0
	farpush ax
	li ax, 4
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 9
	push op
	li ax, 1
	farpush ax
	li ax, 5
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000009384: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 12
	li mar, TopicSinkExplosion
	memread4 ax
	jzi label000000009439
	push op
	li ax, 1
	farpush ax
	li ax, 6
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000009439: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 15
	li mar, MirrorComplete
	memread4 ax
	jzi label000000009494
	push op
	li ax, 1
	farpush ax
	li ax, 7
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000009494: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 18
	push op
	li mar, iNecklace
	mr ax, mar
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000009576
	push op
	li ax, 1
	farpush ax
	li ax, 8
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000009576: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 20
	li ax, -1
	ret 
	jmpi label000000013630
label000000009584: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 22
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010293
	sourceline 24
	li mar, DrainClear
	memread4 ax
	not ax
	jzi label000000010005
	sourceline 25
	push op
	li ax, 0
	farpush ax
	li ax, "To tell the truth, Ingrid, I have no idea what I\'m doing."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 26
	push op
	li ax, 0
	farpush ax
	li ax, "%a I\'ve never had to plumb my own bathroom before."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 0
	farpush ax
	li ax, "Why don\'t you try getting rid of the gunk\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 0
	farpush ax
	li ax, "What, with a bucket\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	push op
	li ax, 0
	farpush ax
	li ax, "No, stupid. I mean using the actual drain."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 30
	push op
	li ax, 0
	farpush ax
	li ax, "D\'you know what\'s clogging it\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 31
	push op
	li ax, 0
	farpush ax
	li ax, "%a Did you leave the plug in\? Is there an arm stickin\' out of the pipe\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 32
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s hard to tell just by looking. And I\'d rather not touch... whatever this is."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
	push op
	li ax, 0
	farpush ax
	li ax, "Well I\'m not gonna do it for you."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 34
	push op
	li ax, 0
	farpush ax
	li ax, "%a Maybe you can knock it loose with somethin\'\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 35
	push op
	li ax, 0
	farpush ax
	li ax, "I dunno. It\'s your bathroom. Look around."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 36
	jmpi label000000010285
label000000010005: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 39
	push op
	li ax, 0
	farpush ax
	li ax, "I\'ve got a hypothetical for you, Ingrid."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 40
	push op
	li ax, 0
	farpush ax
	li ax, "Shoot."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 41
	push op
	li ax, 0
	farpush ax
	li ax, "Let\'s say I removed a blockage. And I know I\'ve removed it. But the water isn\'t draining."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 42
	push op
	li ax, 0
	farpush ax
	li ax, "What should I do\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 43
	push op
	li ax, 0
	farpush ax
	li ax, "Spooooooky."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 44
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s not a ghost!"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 45
	push op
	li ax, 0
	farpush ax
	li ax, "Well it doesn\'t sound like a plumbing thing, either!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 46
	push op
	li ax, 0
	farpush ax
	li ax, "So maybe we should start talking spectral."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000010285: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 48
	li ax, -1
	ret 
	jmpi label000000013630
label000000010293: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 50
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010558
	sourceline 51
	push op
	li ax, 0
	farpush ax
	li ax, "Do you... Do you actually think it could be a ghost\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 52
	push op
	li ax, 0
	farpush ax
	li ax, "Huh\? I was just quoting that movie you had playing on the TVs the other day."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 53
	push op
	li ax, 0
	farpush ax
	li ax, "%a \"Roommates\", or whatever."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 54
	push op
	li ax, 0
	farpush ax
	li ax, "Why\? Do you\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 57
	push op
	li ax, 2
	farpush ax
	li ax, 2
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 58
	push op
	li ax, 1
	farpush ax
	li ax, 3
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 59
	li ax, 8
	ret 
	jmpi label000000013630
label000000010558: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 61
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010937
	sourceline 62
	push op
	li ax, 0
	farpush ax
	li ax, "Regardless of whether or not this is an actual haunting, let\'s try thinking of it as one."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 63
	push op
	li ax, 0
	farpush ax
	li ax, "Let\'s pretend there\'s a ghost in my bathroom. How would I remove it\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 64
	push op
	li ax, 0
	farpush ax
	li ax, "Uhh... I dunno. Do whatever they do in the movies I guess."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 65
	push op
	li ax, 0
	farpush ax
	li ax, "Like you said - ghosts ain\'t easy to see, yeah\? They\'re always hiding, or invisible, or whatever."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 66
	push op
	li ax, 0
	farpush ax
	li ax, "%a So maybe you gotta find a way to actually talk to it\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 67
	push op
	li ax, 0
	farpush ax
	li ax, "This is getting ridiculous."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 68
	push op
	li ax, 0
	farpush ax
	li ax, "You\'re the movie nerd. All I know is that the lights\'re usually off in those scenes."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 69
	push op
	li ax, 0
	farpush ax
	li ax, "%a And, like, there\'s usually a lotta fog."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 70
	push op
	li ax, 0
	farpush ax
	li ax, "Because it\'s harder to see the flaws in the puppets when all you have is candlelight and steam."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 71
	push op
	li ax, 0
	farpush ax
	li ax, "Still! I\'m sure somethin\' you\'ve watched has a clue."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 72
	li ax, -1
	ret 
	jmpi label000000013630
label000000010937: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 74
	ptrstack 8
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000011565
	sourceline 76
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000011233
	sourceline 77
	push op
	li ax, 0
	farpush ax
	li ax, "Hey, Ingrid. Guess what I found."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 78
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDuckC
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 79
	li ax, "*Squeak*"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 80
	push op
	li ax, 0
	farpush ax
	li ax, "Yo! I knew it! You DO have a rubber duck collection!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 81
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s not mine. It\'s a friend\'s."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 82
	push op
	li ax, 0
	farpush ax
	li ax, "You have friends\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 83
	push op
	li ax, 0
	farpush ax
	li ax, "Anyway quit being such a killjoy Ms. D. Float that bad boy."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 84
	jmpi label000000011557
label000000011233: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 87
	push op
	li ax, 0
	farpush ax
	li ax, "So I found an old rubber duck in one of my cupboards..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 88
	push op
	li ax, 0
	farpush ax
	li ax, "Yo! I knew it! You DO collect them!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 89
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s not mine. It\'s a friend\'s."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 90
	push op
	li ax, 0
	farpush ax
	li ax, "You have friends\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 91
	push op
	li ax, 0
	farpush ax
	li ax, "%a Anyway I hear ducks are real good at helping people work through problems. Yours could have a plumbing degree."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 92
	push op
	li ax, 0
	farpush ax
	li ax, "This one looks like a freeloader. It\'s just floating around."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 93
	push op
	li ax, 0
	farpush ax
	li ax, "Maybe he can\'t work under these conditions. You ever think about that\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 95
	li mar, DrainClear
	memread4 ax
	not ax
	jzi label000000011522
	push op
	li ax, 0
	farpush ax
	li ax, "You got him basic plumbing supplies\? Dumbass\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000011522: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 98
	push op
	li ax, 0
	farpush ax
	li ax, "And the light\'s probably in his eyes. Idiot."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000011557: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 100
	li ax, -1
	ret 
	jmpi label000000013630
label000000011565: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 102
	ptrstack 8
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000011957
	sourceline 103
	push op
	li ax, 0
	farpush ax
	li ax, "I have some bad news about Cool Ranch."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 104
	push op
	li ax, 0
	farpush ax
	li ax, "Oh shit is the Buyer\'s Direct recalling all the salad dressing\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 105
	push op
	li ax, 0
	farpush ax
	li ax, "No! I\'m talking about J-"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 106
	push op
	li ax, 0
	farpush ax
	li ax, "%a about my friend\'s rubber duck."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 107
	push op
	li ax, 0
	farpush ax
	li ax, "I dropped it in the bath and it sunk like a rock."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 108
	push op
	li ax, 0
	farpush ax
	li ax, "Well that\'s about the saddest thing I ever heard from a forty year-old."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 109
	push op
	li ax, 0
	farpush ax
	li ax, "I\'m twenty-nine, Ingrid%DW"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 110
	push op
	li ax, 0
	farpush ax
	li ax, "You sure it didn\'t just fall outta the tub when you weren\'t looking\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 111
	push op
	li ax, 0
	farpush ax
	li ax, "Get a light in there. See where it went."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 112
	push op
	li ax, 2
	farpush ax
	li ax, 4
	farpush ax
	li ax, 7
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 113
	li ax, -1
	ret 
	jmpi label000000013630
label000000011957: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 116
	ptrstack 8
	memread4 ax
	push ax
	li ax, 6
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000012231
	sourceline 117
	push op
	li ax, 0
	farpush ax
	li ax, "So my sink exploded."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 118
	push op
	li ax, 0
	farpush ax
	li ax, "Wow."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 119
	push op
	li ax, 0
	farpush ax
	li ax, "%a Y\'know now that you mention it I\'ve heard about stuff like that happening."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 120
	push op
	li ax, 0
	farpush ax
	li ax, "After water gets turned off or clogged for a while there\'s like... air bubbles\? In the pipes\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 121
	push op
	li ax, 0
	farpush ax
	li ax, "So when you flip it on again the faucet\'s all SPLWWWSSHSHSHHHHSHSHSHSHHH."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 122
	push op
	li ax, 0
	farpush ax
	li ax, "Just be careful turnin\' things off and on I guess. Make sure there\'s nothin\' down there first."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 123
	push op
	li ax, 0
	farpush ax
	li ax, "Hm."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 124
	li ax, -1
	ret 
	jmpi label000000013630
label000000012231: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 126
	ptrstack 8
	memread4 ax
	push ax
	li ax, 7
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000012734
	sourceline 127
	push op
	li ax, 0
	farpush ax
	li ax, "Ingrid, um... The mirror, it..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 128
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 129
	push op
	li ax, 0
	farpush ax
	li ax, "%aMs. D\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 130
	push op
	li ax, 0
	farpush ax
	li ax, "I saw..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 131
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 132
	push op
	li ax, 0
	farpush ax
	li ax, "F-forget it."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 133
	push op
	li ax, 0
	farpush ax
	li ax, "Dude, you sound real freaked. Tell me."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 134
	push op
	li ax, 0
	farpush ax
	li ax, "No."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 135
	push op
	li ax, 0
	farpush ax
	li ax, "%a No, it\'s... fine. I\'m just tired and angry and imagining shit."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 136
	li ax, "This has got to be a prank. It\'s probably a prank by HER."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 137
	li ax, "It\'s not hard to fake mirror writing. All it takes is a bit of grease to block condensation, and..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 138
	li ax, "Whatever the punchline to this bullshit is, I\'m sure I\'ll find it near that arrow."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 139
	push op
	li ax, 0
	farpush ax
	li ax, "Uh. O-kay then."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 140
	push op
	li ax, 0
	farpush ax
	li ax, "%a So glad you called to tell me nothing."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 141
	push op
	li ax, 0
	farpush ax
	li ax, "Super cool of you."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 142
	li ax, -1
	ret 
	jmpi label000000013630
label000000012734: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 144
	ptrstack 8
	memread4 ax
	push ax
	li ax, 8
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000013533
	sourceline 145
	push op
	li ax, 0
	farpush ax
	li ax, "Ingrid, I am going to ask you something in complete seriousness. And I need you to answer seriously too."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 146
	push op
	li ax, 0
	farpush ax
	li ax, "Okay... weirdly intense but what\'s up\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 147
	push op
	li ax, 0
	farpush ax
	li ax, "Have you, at any point over the past week, used the upstairs bathroom\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 148
	push op
	li ax, 0
	farpush ax
	li ax, "What\? No."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 149
	push op
	li ax, 0
	farpush ax
	li ax, "You\'re positive\? Because if this is the setup to another joke-"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 150
	push op
	li ax, 0
	farpush ax
	li ax, "Dude I\'ve told you like five times, the store bathroom is nasty and your apartment\'s is no better."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 151
	push op
	li ax, 0
	farpush ax
	li ax, "I use the Git Fit\'s bathroom."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 152
	push op
	li ax, 0
	farpush ax
	li ax, "And you\'ve never snuck up there for any other purpose, or hidden anything behind any of my cabinets."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 153
	push op
	li ax, 0
	farpush ax
	li ax, "No\?\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 154
	push op
	li ax, 0
	farpush ax
	li ax, "%a Oh, man, you found something didn\'t you\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 155
	push op
	li ax, 0
	farpush ax
	li ax, "Yeah. It looks like an amber pendant."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 156
	push op
	li ax, 0
	farpush ax
	li ax, "Rad."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 157
	push op
	li ax, 0
	farpush ax
	li ax, "It has a praying mantis inside."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 158
	push op
	li ax, 0
	farpush ax
	li ax, "Still rad."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 159
	push op
	li ax, 0
	farpush ax
	li ax, "And I think... I think the thing in the tub..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 160
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 161
	push op
	li ax, 0
	farpush ax
	li ax, "%aYou screwin\' with me\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 162
	push op
	li ax, 0
	farpush ax
	li ax, "Are you screwing with *me\?*"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 163
	push op
	li ax, 0
	farpush ax
	li ax, "Ms. D, you are my boss and capable of financially wrecking my shit if you wanted to."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 164
	push op
	li ax, 0
	farpush ax
	li ax, "So know I say this with that in mind:"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 165
	push op
	li ax, 0
	farpush ax
	li ax, "%a Hurl that thing in a dumpster and find some place else to piss."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 166
	push op
	li ax, 0
	farpush ax
	li ax, "Okay\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 167
	li ax, -1
	ret 
	jmpi label000000013630
label000000013533: ; inside _run_dialog7$1, ; referenced by 1 spots
	sourceline 169
	ptrstack 8
	memread4 ax
	push ax
	li ax, 9
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000013630
	sourceline 170
	push op
	li ax, 0
	farpush ax
	li ax, "Never mind."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 171
	push op
	li ax, 0
	farpush ax
	li ax, "Oh, you wanna talk about something else\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 172
	li ax, 5
	ret 
label000000013630: ; inside _run_dialog7$1, ; referenced by 10 spots
	sourceline 173
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog8$1: ; 1 args
	sourceline 1
	thisaddr 13640
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000013673
	sourceline 3
	li ax, -1
	ret 
	jmpi label000000015082
label000000013673: ; inside _run_dialog8$1, ; referenced by 1 spots
	sourceline 5
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000013982
	sourceline 6
	push op
	li ax, 0
	farpush ax
	li ax, "Yes."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	push op
	li ax, 0
	farpush ax
	li ax, "Wait really\? You\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 8
	push op
	li ax, 0
	farpush ax
	li ax, "%a The woman who irons her jean skirts believes in ghosts."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 9
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s hard to put into words, but..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, "I think it\'s silly to assume I know what happens after death."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 11
	push op
	li ax, 0
	farpush ax
	li ax, "%a Not when I know so little about life."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, "And now my bathtub is bleeding. So either life is being very weird, or something else is."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 13
	push op
	li ax, 0
	farpush ax
	li ax, "Thiiiiis is getting a little too real for me, boss."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	li ax, 24
	ret 
	jmpi label000000015082
label000000013982: ; inside _run_dialog8$1, ; referenced by 1 spots
	sourceline 16
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000014256
	sourceline 17
	push op
	li ax, 0
	farpush ax
	li ax, "I don\'t know. Most ghost stories are about people you can\'t see."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 18
	push op
	li ax, 0
	farpush ax
	li ax, "I can\'t make a definitive argument over the existance of something - or someone - so intangible."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, "%a So it\'s not worth thinking about."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 0
	farpush ax
	li ax, "Well, one of them unseen people might be manifesting sludge in your bathroom."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 21
	push op
	li ax, 0
	farpush ax
	li ax, "And there\'s a lot of other things that might be causing it, too."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 22
	push op
	li ax, 0
	farpush ax
	li ax, "%a So rather than arguing about the cause, let\'s focus on fixing the symptoms."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 23
	push op
	li ax, 0
	farpush ax
	li ax, "Okay\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 24
	li ax, 24
	ret 
	jmpi label000000015082
label000000014256: ; inside _run_dialog8$1, ; referenced by 1 spots
	sourceline 26
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000014705
	sourceline 27
	push op
	li ax, 0
	farpush ax
	li ax, "No."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 0
	farpush ax
	li ax, "Don\'t lie to me, you live for that shit."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	push op
	li ax, 0
	farpush ax
	li ax, "One, watch your language. And two, I live for *horror*."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 30
	push op
	li ax, 0
	farpush ax
	li ax, "Just because I like to see a good old fashioned practical effect decapitation doesn\'t mean I think invisible people are in my house."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 31
	push op
	li ax, 0
	farpush ax
	li ax, "Invisible people\? M-Ms. Dunst..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 32
	push op
	li ax, 0
	farpush ax
	li ax, "Here we go."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
	push op
	li ax, 0
	farpush ax
	li ax, "Th-this phonecall..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 34
	push op
	li ax, 0
	farpush ax
	li ax, "%a It\'s COMING FROM INSIDE THE-%DONTWAIT"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 35
	push op
	li ax, 0
	farpush ax
	li ax, "No it isn\'t!"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 36
	push op
	li ax, 0
	farpush ax
	li ax, "You can\'t prove it\'s not, man! I know where you live!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 37
	push op
	li ax, 0
	farpush ax
	li ax, "Don\'t make me check the cameras in my underpants, Ingrid."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 38
	push op
	li ax, 0
	farpush ax
	li ax, "I won\'t be happy."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 39
	li ax, 24
	ret 
	jmpi label000000015082
label000000014705: ; inside _run_dialog8$1, ; referenced by 1 spots
	sourceline 41
	ptrstack 8
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000015082
	sourceline 42
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 43
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 44
	push op
	li ax, 0
	farpush ax
	li ax, "Wait. Wait, seriously\?\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 45
	push op
	li ax, 0
	farpush ax
	li ax, "Shut up."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 46
	push op
	li ax, 0
	farpush ax
	li ax, "HAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%DONTWAIT"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 47
	push op
	li ax, 0
	farpush ax
	li ax, "Shut up! I don\'t have to take this from a Benjamin Evergreen theorist!"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 48
	push op
	li ax, 0
	farpush ax
	li ax, "Hee-- *snrk*"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 49
	push op
	li ax, 0
	farpush ax
	li ax, "%a Okay, but my theory actually makes sense\? You saw the doco on SBS, the man\'s WAY too talented to have been offed by the mob."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 50
	push op
	li ax, 0
	farpush ax
	li ax, "He\'d be 104, Ingrid. No."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 51
	push op
	li ax, 0
	farpush ax
	li ax, "Still makes more sense than thinking there\'s invisible people in your house!"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 52
	li ax, 24
	ret 
label000000015082: ; inside _run_dialog8$1, ; referenced by 5 spots
	sourceline 53
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog24$1: ; 1 args
	sourceline 1
	thisaddr 15092
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000015510
	sourceline 3
	push op
	li ax, 0
	farpush ax
	li ax, "Look."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 4
	push op
	li ax, 0
	farpush ax
	li ax, "%aRegardless of whether this is an actual haunting, let\'s try thinking of it as one."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 5
	push op
	li ax, 0
	farpush ax
	li ax, "Let\'s pretend there\'s a ghost in my bathroom. How would I remove it\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 6
	push op
	li ax, 0
	farpush ax
	li ax, "Uhh... I dunno. Do whatever they do in the movies I guess."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	push op
	li ax, 0
	farpush ax
	li ax, "Like you said - ghosts ain\'t easy to see, yeah\? They\'re always hiding, or invisible, or whatever."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 8
	push op
	li ax, 0
	farpush ax
	li ax, "%a So maybe you gotta find a way to actually talk to it\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 9
	push op
	li ax, 0
	farpush ax
	li ax, "This is getting ridiculous."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, "You\'re the movie nerd. All I know is that the lights\'re usually off in those scenes."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 11
	push op
	li ax, 0
	farpush ax
	li ax, "%a And, like, there\'s usually a lotta fog."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, "Because it\'s harder to see the flaws in the puppets when all you have is candlelight and steam."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 13
	push op
	li ax, 0
	farpush ax
	li ax, "Still! I\'m sure somethin\' you\'ve watched has a clue."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	li ax, 7
	ret 
	jmpi label000000015537
label000000015510: ; inside _run_dialog24$1, ; referenced by 1 spots
	sourceline 16
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000015537
	sourceline 17
	li ax, -1
	ret 
label000000015537: ; inside _run_dialog24$1, ; referenced by 2 spots
	sourceline 18
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog9$1: ; 1 args
	sourceline 1
	thisaddr 15547
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000016020
	sourceline 5
	push op
	li ax, 1
	farpush ax
	li ax, 75
	farpush ax
	li mar, aBathLoop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbient
	push mar
	pop mar
	ptrset ax
	sourceline 6
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 9
	push op
	li ax, 0
	farpush ax
	li ax, "It\'s... an amber necklace\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	li ax, 0
	li mar, leavingRoom
	memwrite4 ax
	sourceline 11
	li ax, 15
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
	sourceline 12
	li ax, 0
	mr bx, ax
	li mar, gSplash
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 13
	push op
	li ax, 0
	farpush ax
	li ax, "%aAt least I think it\'s amber."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 15
	li ax, "What\'s it doing in my bathroom\? Have I never cleaned down the back of the sink\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 16
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 17
	li ax, "And... if there really is something in the tub..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 18
	li ax, "And it wants this thing..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 19
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 21
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 22
	li ax, -2
	ret 
label000000016020: ; inside _run_dialog9$1, ; referenced by 1 spots
	sourceline 23
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog10$1: ; 1 args
	sourceline 1
	thisaddr 16030
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000016401
	sourceline 4
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 5
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	push op
	li ax, 0
	farpush ax
	li ax, "This is what you\'re after, isn\'t it\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 8
	push op
	li ax, 0
	farpush ax
	li ax, "%a This necklace, and then you\'ll leave me alone\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	li mar, BathroomLightOn
	memread4 ax
	not ax
	jzi label000000016297
	sourceline 11
	push op
	li ax, 1
	farpush ax
	li ax, 1
	farpush ax
	li ax, 10
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 10
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 13
	jmpi label000000016393
label000000016297: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 16
	push op
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 10
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 17
	push op
	li ax, 1
	farpush ax
	li ax, 2
	farpush ax
	li ax, 10
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000016393: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 19
	li ax, -1
	ret 
	jmpi label000000018497
label000000016401: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 21
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000016457
	sourceline 22
	li ax, "Actually, fuck that."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 23
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 24
	li ax, -2
	ret 
	jmpi label000000018497
label000000016457: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 28
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000017380
	sourceline 29
	push op
	li mar, aBGM_Four_Standard
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 30
	push op
	li mar, aBGM_Four_Tinny
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 31
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 32
	li ax, 0
	li mar, InDialog
	memwrite4 ax
	sourceline 33
	li ax, 12
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 34
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 35
	push op
	li ax, 0
	farpush ax
	li ax, "Fine."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 38
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 39
	push op
	li ax, 1
	farpush ax
	li ax, 22
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 40
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 42
	ptrstack 4
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
	not ax
	jzi label000000017029
	sourceline 43
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
	sourceline 44
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 30
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 45
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 46
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 47
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
label000000017029: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 50
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 51
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 53
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 54
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 55
	push op
	li ax, 0
	farpush ax
	li ax, "Have it."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 56
	push op
	li ax, 0
	farpush ax
	li ax, "%a Now, will you please get out of my tub\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 58
	li ax, 120
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 59
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 60
	push op
	li ax, 0
	farpush ax
	li ax, "What the hell am I doing\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 62
	li mar, DisableJumpscares
	memread4 ax
	not ax
	jzi label000000017310
	push op
	li ax, 0
	farpush ax
	li ax, "%a This is just a huge waste of time%DONTWAIT"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	jmpi label000000017345
label000000017310: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 66
	push op
	li ax, 0
	farpush ax
	li ax, "%a This is just a huge waste of time--"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000017345: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 67
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 69
	li ax, 14
	ptrstack 8
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	ptrstack 8
	ptrzero 
	ptrstack 4
	ptrzero 
	subi sp, 8
	jmpi label000000018497
label000000017380: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 72
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000018497
	sourceline 73
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 74
	push op
	li mar, aBGM_Four_Standard
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 75
	push op
	li mar, aBGM_Four_Tinny
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 76
	li ax, 0
	li mar, InDialog
	memwrite4 ax
	sourceline 77
	li ax, 12
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 78
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 79
	push op
	li ax, 0
	farpush ax
	li ax, "Fine."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 82
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 83
	push op
	li ax, 1
	farpush ax
	li ax, 22
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 84
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 86
	ptrstack 4
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
	not ax
	jzi label000000017952
	sourceline 87
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
	sourceline 88
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 30
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 89
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 90
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 91
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
label000000017952: ; inside _run_dialog10$1, ; referenced by 1 spots
	sourceline 94
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 95
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 97
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 98
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 99
	push op
	li ax, 0
	farpush ax
	li ax, "Have it."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 100
	push op
	li ax, 0
	farpush ax
	li ax, "%a Now, will you please get out of my tub\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 102
	li ax, 120
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 103
	push op
	li ax, 0
	farpush ax
	li ax, "...Nothing\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 104
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 105
	push op
	li ax, 0
	farpush ax
	li ax, "%a Nothing at all\?!"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 106
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 107
	push op
	li ax, 0
	farpush ax
	li ax, "Great. Super."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 108
	li ax, "Can\'t believe I let Ingrid talk me into believing complete *horseshit*."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 109
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 110
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 111
	push op
	li ax, 0
	farpush ax
	li ax, "%aNothing left to do but go to work, I suppose."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 112
	push op
	li mar, iNecklace
	mr ax, mar
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::LoseInventory^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 114
	li ax, 1
	li mar, EndingSequenceTriggered
	memwrite4 ax
	sourceline 115
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 116
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 117
	li ax, -2
	ptrstack 8
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	ptrstack 8
	ptrzero 
	ptrstack 4
	ptrzero 
	subi sp, 8
label000000018497: ; inside _run_dialog10$1, ; referenced by 4 spots
	sourceline 118
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog14$1: ; 1 args
	sourceline 1
	thisaddr 18507
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000019884
	sourceline 3
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 4
	li ax, 0
	mr bx, ax
	li mar, gHTMLIcons
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 5
	li ax, 12
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 6
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 9
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aGhostWind
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 11
	li ax, 253
	push ax
	li ax, 9
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 12
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 13
	push op
	li ax, 1
	farpush ax
	li ax, 38
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 15
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 39
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 16
	li ax, 1
	ptrstack 8
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
	sourceline 17
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 6
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 20
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 21
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 4
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 22
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 6
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 24
	li ax, "U-uhhh..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 27
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 29
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 14
	farpush ax
	li ax, 2
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 30
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 8
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 31
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aGhostSuspense
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 3
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 34
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 35
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 3
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 36
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 3
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 37
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 38
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 3
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 41
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 30
	farpush ax
	li ax, 5
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 42
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 4
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 44
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000019731
	push op
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000019731: ; inside _run_dialog14$1, ; referenced by 1 spots
	sourceline 46
	li ax, 46
	farpush ax
	setfuncargs 1
	li ax, showSplash
	farcall ax
	farsubsp 1
	sourceline 47
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aWaterSpout
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 48
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 50
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 51
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 52
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li ax, 9
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
	sourceline 53
	li ax, -2
	ptrstack 8
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	ptrstack 8
	ptrzero 
	ptrstack 4
	ptrzero 
	subi sp, 8
label000000019884: ; inside _run_dialog14$1, ; referenced by 1 spots
	sourceline 54
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog11$1: ; 1 args
	sourceline 1
	thisaddr 19894
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000020552
	sourceline 3
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 4
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 5
	li ax, 0
	mr bx, ax
	li mar, gHTMLIcons
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 7
	push op
	li ax, 31998
	farpush ax
	li ax, 75
	farpush ax
	li mar, aPhoneRingMuffled
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 8
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 9
	push op
	li ax, 31998
	farpush ax
	li ax, 75
	farpush ax
	li mar, aPhoneRingMuffled
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 10
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 11
	push op
	li ax, 31998
	farpush ax
	li ax, 75
	farpush ax
	li mar, aPhoneRingMuffled
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 12
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 13
	push op
	li ax, 31998
	farpush ax
	li ax, 75
	farpush ax
	li mar, aPhoneRingMuffled
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanSFX
	push mar
	pop mar
	ptrset ax
	sourceline 14
	li ax, 45
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 16
	li mar, chanSFX
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000020262
	push op
	li mar, chanSFX
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000020262: ; inside _run_dialog11$1, ; referenced by 1 spots
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, "You\'ve reached Video Nine\'s answering machine. Business hours are between 8 AM - 11 PM."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 0
	farpush ax
	li ax, "Please leave a message, and one of our friendly staff will-%DONTWAIT"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 22
	push op
	li ax, 31998
	farpush ax
	li ax, 75
	farpush ax
	li mar, aHangUp
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 25
	li ax, 120
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 28
	push op
	li ax, 31998
	farpush ax
	li ax, 75
	farpush ax
	li mar, aDoorKnock
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	li ax, 120
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 30
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 34
	li mar, DisableJumpscares
	memread4 ax
	jzi label000000020496
	push op
	li ax, 1
	farpush ax
	li ax, 2
	farpush ax
	li ax, 11
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	jmpi label000000020544
label000000020496: ; inside _run_dialog11$1, ; referenced by 1 spots
	sourceline 38
	push op
	li ax, 1
	farpush ax
	li ax, 1
	farpush ax
	li ax, 11
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000020544: ; inside _run_dialog11$1, ; referenced by 1 spots
	sourceline 39
	li ax, -1
	ret 
	jmpi label000000020608
label000000020552: ; inside _run_dialog11$1, ; referenced by 1 spots
	sourceline 41
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000020581
	sourceline 42
	li ax, 12
	ret 
	jmpi label000000020608
label000000020581: ; inside _run_dialog11$1, ; referenced by 1 spots
	sourceline 44
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000020608
	sourceline 45
	li ax, 23
	ret 
label000000020608: ; inside _run_dialog11$1, ; referenced by 3 spots
	sourceline 46
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog12$1: ; 1 args
	sourceline 1
	thisaddr 20618
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000022631
	sourceline 3
	li ax, 0
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 4
	li ax, 2
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 5
	push op
	li ax, 1
	farpush ax
	li ax, 50
	farpush ax
	li mar, aAmbienceCreakyPipes
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbientC
	push mar
	pop mar
	ptrset ax
	sourceline 6
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 7
	li ax, 0
	mr bx, ax
	li mar, gHTMLIcons
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 8
	push op
	li ax, 0
	farpush ax
	li ax, "...Ms. Dunst\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 9
	push op
	li ax, 0
	farpush ax
	li ax, "%a I-it\'s me. You- you weren\'t answering, so I-"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, "Look I\'m coming in. Please have pants on..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 13
	push op
	li ax, 31998
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDoorOpen_InspectorJ
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 15
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 17
	push op
	li ax, 0
	farpush ax
	li ax, "Euughh... smells like a sewer in here..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 18
	push op
	li ax, 0
	farpush ax
	li ax, "%a Where the hell\'s the...\? Ah."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 19
	li ax, 0
	ptrstack 8
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
	sourceline 20
	li ax, 80
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 22
	push op
	li mar, aAmbienceCreakyPipes
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 23
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aLightswitch
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 24
	li ax, 0
	mr bx, ax
	li mar, gSplash
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 25
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li mar, aBathLoop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbient
	push mar
	pop mar
	ptrset ax
	sourceline 26
	push op
	li ax, 1
	farpush ax
	li ax, 34
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 0
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 28
	li ax, 1
	ptrstack 8
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
	sourceline 29
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 1
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 30
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 4
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 31
	push op
	li ax, 0
	farpush ax
	li ax, "Ohh man."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 32
	li ax, "Ms. Dunst wasn\'t kidding. That- that SERIOUSLY look like blood."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 33
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 2
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 34
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 36
	li ax, "Is this a prank\? No she- oh man what if she actually hurt herself\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 37
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 38
	push op
	li ax, 0
	farpush ax
	li ax, "Should I call the cops\? I should definitely call the cops%DW"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 39
	push op
	li ax, 37
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::ChangeView^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 40
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 35
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 43
	li mar, DisableJumpscares
	memread4 ax
	not ax
	jzi label000000021826
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aViolinSting
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
label000000021826: ; inside _run_dialog12$1, ; referenced by 1 spots
	sourceline 46
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000021956
	sourceline 47
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 2
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 48
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDuckD
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 49
	jmpi label000000022152
label000000021956: ; inside _run_dialog12$1, ; referenced by 1 spots
	sourceline 51
	push op
	li mar, iBroom
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000022030
	push ax
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000022030: ; inside _run_dialog12$1, ; referenced by 1 spots
	jzi label000000022092
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	jmpi label000000022152
label000000022092: ; inside _run_dialog12$1, ; referenced by 1 spots
	sourceline 55
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
label000000022152: ; inside _run_dialog12$1, ; referenced by 2 spots
	sourceline 57
	push op
	li ax, 1
	farpush ax
	li ax, 36
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 58
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 0
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 59
	li ax, 0
	li mar, InDialog
	memwrite4 ax
	sourceline 60
	push op
	li ax, 0
	farpush ax
	li ax, "GAAAAAAAAAAAAAAAAAAAAAAAAFUCK- %DONTWAIT"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 62
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000022356
	push op
	li ax, 0
	farpush ax
	li ax, "CAN WE GET SOME HELP HERE PLEASE"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	jmpi label000000022502
label000000022356: ; inside _run_dialog12$1, ; referenced by 1 spots
	sourceline 65
	push op
	li mar, iBroom
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000022430
	push ax
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000022430: ; inside _run_dialog12$1, ; referenced by 1 spots
	jzi label000000022467
	push op
	li ax, 0
	farpush ax
	li ax, "AAAAAAAAAAGHHHHINEEDAPLUNGER"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	jmpi label000000022502
label000000022467: ; inside _run_dialog12$1, ; referenced by 1 spots
	sourceline 69
	push op
	li ax, 0
	farpush ax
	li ax, "CAN I GET SOME HELP HERE PLEASE"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000022502: ; inside _run_dialog12$1, ; referenced by 2 spots
	sourceline 70
	li ax, 20
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 71
	li ax, 46
	farpush ax
	setfuncargs 1
	li ax, showSplash
	farcall ax
	farsubsp 1
	sourceline 74
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000022582
	push op
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000022582: ; inside _run_dialog12$1, ; referenced by 1 spots
	sourceline 76
	li ax, 280
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 77
	setfuncargs 0
	li ax, RestartGame
	farcall ax
	sourceline 78
	li ax, -2
	ptrstack 8
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	ptrstack 8
	ptrzero 
	ptrstack 4
	ptrzero 
	subi sp, 8
label000000022631: ; inside _run_dialog12$1, ; referenced by 1 spots
	sourceline 79
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog15$1: ; 1 args
	sourceline 1
	thisaddr 22641
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000022761
	sourceline 3
	li ax, 46
	farpush ax
	setfuncargs 1
	li ax, showSplash
	farcall ax
	farsubsp 1
	sourceline 6
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000022730
	push op
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000022730: ; inside _run_dialog15$1, ; referenced by 1 spots
	sourceline 8
	li ax, 280
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 9
	setfuncargs 0
	li ax, RestartGame
	farcall ax
	sourceline 11
	li ax, -2
	ret 
label000000022761: ; inside _run_dialog15$1, ; referenced by 1 spots
	sourceline 12
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog23$1: ; 1 args
	sourceline 1
	thisaddr 22771
	sourceline 3
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000024674
	sourceline 4
	li ax, 0
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 5
	li ax, 2
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 6
	push op
	li ax, 1
	farpush ax
	li ax, 50
	farpush ax
	li mar, aAmbienceCreakyPipes
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbientC
	push mar
	pop mar
	ptrset ax
	sourceline 7
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 8
	push op
	li ax, 0
	farpush ax
	li ax, "...Ms. Dunst\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 9
	push op
	li ax, 0
	farpush ax
	li ax, "%a I-it\'s me. You- you weren\'t answering, so I-"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, "Look I\'m coming in. Please have pants on..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 13
	push op
	li ax, 31998
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDoorOpen_InspectorJ
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 15
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 17
	push op
	li ax, 0
	farpush ax
	li ax, "Euughh... smells like a sewer in here..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 18
	push op
	li ax, 0
	farpush ax
	li ax, "%a Where the hell\'s the...\? Ah."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 19
	li ax, 0
	ptrstack 8
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
	sourceline 20
	li ax, 80
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 22
	push op
	li mar, aAmbienceCreakyPipes
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 23
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aLightswitch
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 24
	li ax, 0
	mr bx, ax
	li mar, gSplash
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 25
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li mar, aBathLoop
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbient
	push mar
	pop mar
	ptrset ax
	sourceline 26
	push op
	li ax, 1
	farpush ax
	li ax, 34
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 0
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 28
	li ax, 1
	ptrstack 8
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
	sourceline 29
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 1
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 30
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 4
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 31
	push op
	li ax, 0
	farpush ax
	li ax, "Ohh man."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 32
	li ax, "Ms. Dunst wasn\'t kidding. That- that SERIOUSLY look like blood."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 33
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 2
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 34
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 36
	li ax, "Is this a prank\? No she- oh man what if she actually hurt herself\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 37
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 38
	push op
	li ax, 0
	farpush ax
	li ax, "Should I call the cops\? I should definitely call the cops--"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 40
	push op
	li ax, 37
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::ChangeView^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 41
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 35
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 43
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000023999
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 2
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	jmpi label000000024195
label000000023999: ; inside _run_dialog23$1, ; referenced by 1 spots
	sourceline 46
	push op
	li mar, iBroom
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000024073
	push ax
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000024073: ; inside _run_dialog23$1, ; referenced by 1 spots
	jzi label000000024135
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	jmpi label000000024195
label000000024135: ; inside _run_dialog23$1, ; referenced by 1 spots
	sourceline 50
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
label000000024195: ; inside _run_dialog23$1, ; referenced by 2 spots
	sourceline 52
	push op
	li ax, 1
	farpush ax
	li ax, 36
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 53
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 0
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 54
	li ax, 0
	li mar, InDialog
	memwrite4 ax
	sourceline 55
	push op
	li ax, 0
	farpush ax
	li ax, "GAAAAAAAAAAAAAAAAAAAAAAAAFUCK-"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 57
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000024399
	push op
	li ax, 0
	farpush ax
	li ax, "CAN WE GET SOME HELP HERE PLEASE"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	jmpi label000000024545
label000000024399: ; inside _run_dialog23$1, ; referenced by 1 spots
	sourceline 60
	push op
	li mar, iBroom
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000024473
	push ax
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000024473: ; inside _run_dialog23$1, ; referenced by 1 spots
	jzi label000000024510
	push op
	li ax, 0
	farpush ax
	li ax, "AAAAAAAAAAGHHHHINEEDAPLUNGER"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	jmpi label000000024545
label000000024510: ; inside _run_dialog23$1, ; referenced by 1 spots
	sourceline 64
	push op
	li ax, 0
	farpush ax
	li ax, "CAN I GET SOME HELP HERE PLEASE"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000024545: ; inside _run_dialog23$1, ; referenced by 2 spots
	sourceline 65
	li ax, 20
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 66
	li ax, 46
	farpush ax
	setfuncargs 1
	li ax, showSplash
	farcall ax
	farsubsp 1
	sourceline 69
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000024625
	push op
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000024625: ; inside _run_dialog23$1, ; referenced by 1 spots
	sourceline 71
	li ax, 280
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 72
	setfuncargs 0
	li ax, RestartGame
	farcall ax
	sourceline 73
	li ax, -2
	ptrstack 8
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	ptrstack 8
	ptrzero 
	ptrstack 4
	ptrzero 
	subi sp, 8
label000000024674: ; inside _run_dialog23$1, ; referenced by 1 spots
	sourceline 74
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog17$1: ; 1 args
	sourceline 1
	thisaddr 24684
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000026558
	sourceline 3
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 4
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 6
	li ax, 1
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 7
	li ax, 0
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 8
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	li ax, 40
	pop bx
	sub bx, ax
	mr ax, bx
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
	li ax, Object::set_X
	farcall ax
	farsubsp 1
	pop op
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 43
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 11
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 42
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 14
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
	li ax, 5
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 16
	li ax, "Ugh... my hair feels disgusting."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 18
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 20
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
	sourceline 21
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 22
	push op
	li ax, 1
	farpush ax
	li ax, 0
	farpush ax
	li ax, 920
	farpush ax
	li ax, 7
	farpush ax
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
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	li ax, 40
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	li ax, 1065353216
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 6
	li ax, Object::TweenX
	farcall ax
	farsubsp 6
	pop op
	sourceline 23
	push op
	li ax, 0
	farpush ax
	li ax, "Excuse me, I\'m looking for the owner\?"
	newstr ax
	farpush ax
	li mar, cPlumber
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 25
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 3
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 26
	push op
	li ax, 0
	farpush ax
	li ax, "Mmmh\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 0
	farpush ax
	li ax, "I got a call about a blocked pipe."
	newstr ax
	farpush ax
	li mar, cPlumber
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 0
	farpush ax
	li ax, "Oh. Yeah. Right."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	push op
	li ax, 0
	farpush ax
	li ax, "%a The bathroom\'s upstairs. Door\'s over there."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 31
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1063
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 32
	push op
	li ax, 1
	farpush ax
	li ax, 0
	farpush ax
	li ax, 919
	farpush ax
	li ax, 7
	farpush ax
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
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	li ax, 40
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	li ax, 1065353216
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 6
	li ax, Object::TweenX
	farcall ax
	farsubsp 6
	pop op
	sourceline 34
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 35
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1063
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 3
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 36
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
	li ax, 5
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 37
	push op
	li ax, 0
	farpush ax
	li ax, "At least he got here quickly."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 39
	li mar, DisableJumpscares
	memread4 ax
	jzi label000000025885
	sourceline 40
	push op
	li ax, 0
	farpush ax
	li ax, "This is going to cost a fortune-"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 41
	li ax, "*sfx: screaming is heard from upstairs*"
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
	sourceline 42
	jmpi label000000025920
label000000025885: ; inside _run_dialog17$1, ; referenced by 1 spots
	sourceline 45
	push op
	li ax, 0
	farpush ax
	li ax, "This is going to cost a fortune-%DONTWAIT"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
label000000025920: ; inside _run_dialog17$1, ; referenced by 1 spots
	sourceline 49
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000025968
	push op
	li mar, chanAmbient
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::Stop^0
	farcall ax
	pop op
label000000025968: ; inside _run_dialog17$1, ; referenced by 1 spots
	sourceline 52
	li mar, DisableJumpscares
	memread4 ax
	not ax
	jzi label000000026010
	push op
	li ax, 0
	farpush ax
	li ax, 100
	farpush ax
	li mar, aPlumberKill
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
label000000026010: ; inside _run_dialog17$1, ; referenced by 1 spots
	sourceline 55
	li ax, 3
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 56
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 45
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 57
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 4
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 58
	li ax, 6
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 59
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 60
	push op
	li ax, 0
	farpush ax
	li ax, "!!!"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 62
	li ax, 1
	push ax
	li ax, 2
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
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 63
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 2
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 64
	push op
	li ax, 1
	farpush ax
	li ax, 0
	farpush ax
	li ax, 920
	farpush ax
	li ax, 7
	farpush ax
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
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	li ax, 30
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	li ax, 1061997773
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 6
	li ax, Object::TweenX
	farcall ax
	farsubsp 6
	pop op
	sourceline 65
	push op
	li ax, 0
	farpush ax
	li ax, "Ohhhhhhhhhhhhhhhhhhhhhhhhhhhhshit-"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 66
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 67
	li ax, 46
	farpush ax
	setfuncargs 1
	li ax, showSplash
	farcall ax
	farsubsp 1
	sourceline 68
	li ax, 160
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 69
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 70
	setfuncargs 0
	li ax, RestartGame
	farcall ax
	sourceline 71
	li ax, -2
	ptrstack 8
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	ptrstack 8
	ptrzero 
	ptrstack 4
	ptrzero 
	subi sp, 8
label000000026558: ; inside _run_dialog17$1, ; referenced by 1 spots
	sourceline 72
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog18$1: ; 1 args
	sourceline 1
	thisaddr 26568
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000027587
	sourceline 3
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 4
	li ax, 0
	setfuncargs 0
	li ax, Game::get_InSkippableCutscene
	farcall ax
	not ax
	jzi label000000026639
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
label000000026639: ; inside _run_dialog18$1, ; referenced by 1 spots
	sourceline 7
	li ax, 1
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 8
	li ax, 0
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 9
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	li ax, 70
	pop bx
	sub bx, ax
	mr ax, bx
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
	li ax, Object::set_X
	farcall ax
	farsubsp 1
	pop op
	sourceline 10
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Y
	farcall ax
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
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
	li ax, Object::set_Y
	farcall ax
	farsubsp 1
	pop op
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 44
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 13
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 42
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 16
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
	li ax, 5
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 18
	li ax, "Ugh, what a week..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 19
	li ax, "What am I going to do\? I can\'t keep relying on the gym\'s showers."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 20
	li ax, "*Sigh*"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 21
	li ax, "Maybe I\'m overreacting. Maybe I *should* call a plumber."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 23
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
	sourceline 24
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 25
	push op
	li ax, 1
	farpush ax
	li ax, 0
	farpush ax
	li ax, 919
	farpush ax
	li ax, 7
	farpush ax
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
	li ax, Object::get_X
	farcall ax
	pop op
	push ax
	li ax, 40
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	li ax, 1065353216
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 6
	li ax, Object::TweenX
	farcall ax
	farsubsp 6
	pop op
	sourceline 26
	li ax, 20
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 27
	push op
	li ax, 0
	farpush ax
	li ax, "Yo, Ms. D\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 3
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 29
	li ax, 1
	li mar, InDialog
	memwrite4 ax
	sourceline 30
	push op
	li ax, 0
	farpush ax
	li ax, "Mmmh\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 31
	push op
	li ax, 0
	farpush ax
	li ax, "So I know you wanted me to restock, but uhh..."
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 32
	push op
	li ax, 0
	farpush ax
	li ax, "I think there might be something wrong with that last delivery\?"
	newstr ax
	farpush ax
	li mar, cIngrid
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
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
	sourceline 34
	li ax, 0
	farpush ax
	li ax, 307
	farpush ax
	setfuncargs 2
	li ax, moveRoom
	farcall ax
	farsubsp 2
	sourceline 35
	li ax, -2
	ptrstack 8
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	ptrstack 8
	ptrzero 
	ptrstack 4
	ptrzero 
	subi sp, 8
label000000027587: ; inside _run_dialog18$1, ; referenced by 1 spots
	sourceline 36
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog19$1: ; 1 args
	sourceline 1
	thisaddr 27597
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000027630
	sourceline 3
	li ax, -1
	ret 
	jmpi label000000029218
label000000027630: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 5
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000027707
	sourceline 6
	push op
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 19
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	li ax, 20
	ret 
	jmpi label000000029218
label000000027707: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 9
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000027784
	sourceline 11
	push op
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 19
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 12
	li ax, 21
	ret 
	jmpi label000000029218
label000000027784: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 14
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000027861
	sourceline 16
	push op
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 19
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 17
	li ax, 22
	ret 
	jmpi label000000029218
label000000027861: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 19
	ptrstack 8
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000029218
	sourceline 20
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 23
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000028003
	push ax
	li ax, 6
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000028003: ; inside _run_dialog19$1, ; referenced by 1 spots
	jzi label000000028062
	push ax
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000028062: ; inside _run_dialog19$1, ; referenced by 1 spots
	jzi label000000028082
	li ax, "There\'s enough finger-grease on there as it is."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000028825
label000000028082: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 27
	li mar, MirrorA
	memread4 ax
	jzi label000000028106
	push ax
	li mar, MirrorB
	memread4 ax
	pop bx
	land bx, ax
	mr ax, bx
label000000028106: ; inside _run_dialog19$1, ; referenced by 1 spots
	jzi label000000028123
	push ax
	li mar, MirrorC
	memread4 ax
	pop bx
	land bx, ax
	mr ax, bx
label000000028123: ; inside _run_dialog19$1, ; referenced by 1 spots
	jzi label000000028721
	sourceline 29
	li mar, LitCandles
	memread4 ax
	not ax
	jzi label000000028298
	sourceline 30
	li ax, "Hmm. Come to think of it, this looks like the seance sigil they used in the Miranda Manor movie."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 31
	li ax, "Of course, nothing\'s happening. It\'s all a load of nonsense."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 32
	li ax, "...Unless I missed a step\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 33
	li ax, "Whatever. I\'ll let the steam clean this up."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 34
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 35
	li ax, 1
	ptrstack 4
	memwrite4 ax
	sourceline 36
	li ax, 15
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
	sourceline 37
	li ax, 0
	li mar, MirrorA
	memwrite4 ax
	sourceline 38
	li ax, 0
	li mar, MirrorB
	memwrite4 ax
	sourceline 39
	li ax, 0
	li mar, MirrorC
	memwrite4 ax
	sourceline 40
	jmpi label000000028717
label000000028298: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 43
	li ax, "There. One tacky seance sigil from one tacky movie."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 44
	li ax, "Am I really so desperate for a shower I\'m trying *this*\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 45
	li ax, "Whatever. I\'ll let the steam clean this up."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 46
	li ax, 20
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
	sourceline 48
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000028442
	li ax, 357
	push ax
	li ax, 1
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000028492
label000000028442: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 51
	li ax, 356
	push ax
	li ax, 1
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000028492: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 53
	li ax, 29
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 54
	li ax, 29
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 55
	li ax, 29
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 56
	li ax, 20
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
	sourceline 57
	li ax, 1
	li mar, MirrorComplete
	memwrite4 ax
	sourceline 58
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 59
	li ax, "...\?\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000028717: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 61
	jmpi label000000028825
label000000028721: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 65
	li ax, "Fun. I\'ll let the steam clean it up."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 66
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 67
	li ax, 1
	ptrstack 4
	memwrite4 ax
	sourceline 68
	li ax, 15
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
	sourceline 69
	li ax, 0
	li mar, MirrorA
	memwrite4 ax
	sourceline 70
	li ax, 0
	li mar, MirrorB
	memwrite4 ax
	sourceline 71
	li ax, 0
	li mar, MirrorC
	memwrite4 ax
label000000028825: ; inside _run_dialog19$1, ; referenced by 2 spots
	sourceline 75
	li ax, 29
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 76
	li ax, 29
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 77
	li ax, 29
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 79
	ptrstack 4
	memread4 ax
	jzi label000000029012
	li ax, 15
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
label000000029012: ; inside _run_dialog19$1, ; referenced by 1 spots
	sourceline 82
	li ax, 0
	li mar, MirrorFace
	memwrite4 ax
	sourceline 83
	li ax, 0
	mr bx, ax
	li mar, gSplash
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 84
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 85
	push op
	li ax, 1
	farpush ax
	li ax, 1
	farpush ax
	li ax, 19
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 86
	push op
	li ax, 1
	farpush ax
	li ax, 2
	farpush ax
	li ax, 19
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 87
	push op
	li ax, 1
	farpush ax
	li ax, 3
	farpush ax
	li ax, 19
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 88
	li ax, -2
	subi sp, 4
	ret 
	subi sp, 4
label000000029218: ; inside _run_dialog19$1, ; referenced by 5 spots
	sourceline 89
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog20$1: ; 1 args
	sourceline 1
	thisaddr 29228
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000029261
	sourceline 3
	li ax, -1
	ret 
	jmpi label000000030322
label000000029261: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 5
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000029631
	sourceline 6
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000029341
	li ax, 439
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000029391
label000000029341: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 10
	li ax, 440
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000029391: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 13
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw01
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 16
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 433
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000029532
	push ax
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 434
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000029532: ; inside _run_dialog20$1, ; referenced by 1 spots
	jzi label000000029605
	sourceline 17
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000029601
	li ax, "There. My reflection is now banned."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000029601: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 19
	jmpi label000000029623
label000000029605: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 22
	li ax, "Zoop."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000029623: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 23
	li ax, 19
	ret 
	jmpi label000000030322
label000000029631: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 26
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000030125
	sourceline 27
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000029711
	li ax, 441
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000029761
label000000029711: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 30
	li ax, 442
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000029761: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 32
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw01
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
	li ax, "Mmm-hm... Yep..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 36
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 447
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000029920
	push ax
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 448
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000029920: ; inside _run_dialog20$1, ; referenced by 1 spots
	jzi label000000030117
	sourceline 37
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000030030
	push ax
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 433
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000030030: ; inside _run_dialog20$1, ; referenced by 1 spots
	jnzi label000000030089
	push ax
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 434
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000030089: ; inside _run_dialog20$1, ; referenced by 1 spots
	jzi label000000030107
	li ax, "Ha ha. It\'s a little face."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000030107: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 39
	li ax, 1
	li mar, MirrorFace
	memwrite4 ax
label000000030117: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 41
	li ax, 19
	ret 
	jmpi label000000030322
label000000030125: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 44
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000030322
	sourceline 45
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000030205
	li ax, 443
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000030255
label000000030205: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 48
	li ax, 444
	push ax
	li ax, 6
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000030255: ; inside _run_dialog20$1, ; referenced by 1 spots
	sourceline 50
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw01
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 51
	li ax, "One, two, three..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 52
	li ax, 1
	li mar, MirrorA
	memwrite4 ax
	sourceline 53
	li ax, 19
	ret 
label000000030322: ; inside _run_dialog20$1, ; referenced by 4 spots
	sourceline 54
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog21$1: ; 1 args
	sourceline 1
	thisaddr 30332
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000030365
	sourceline 3
	li ax, -1
	ret 
	jmpi label000000031248
label000000030365: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 5
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000030814
	sourceline 6
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000030445
	li ax, 433
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000030495
label000000030445: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 9
	li ax, 434
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000030495: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 11
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw02
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	li ax, 6
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 439
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000030636
	push ax
	li ax, 6
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 440
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000030636: ; inside _run_dialog21$1, ; referenced by 1 spots
	jzi label000000030709
	sourceline 15
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000030705
	li ax, "There. My reflection is now banned."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000030705: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 17
	jmpi label000000030796
label000000030709: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 19
	li ax, 7
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000030778
	li ax, "Smooth and inoffensive."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000030796
label000000030778: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 23
	li ax, "...Circle it like that..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000030796: ; inside _run_dialog21$1, ; referenced by 2 spots
	sourceline 25
	li ax, 1
	li mar, MirrorB
	memwrite4 ax
	sourceline 26
	li ax, 19
	ret 
	jmpi label000000031248
label000000030814: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 28
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031032
	sourceline 29
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000030894
	li ax, 435
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000030944
label000000030894: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 32
	li ax, 436
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000030944: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 34
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw02
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 36
	li mar, MirrorFace
	memread4 ax
	not ax
	jzi label000000031006
	li ax, "Bullseye."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000031024
label000000031006: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 40
	li ax, "Annnnd I\'ve ruined it."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000031024: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 41
	li ax, 19
	ret 
	jmpi label000000031248
label000000031032: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 43
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031248
	sourceline 44
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000031112
	li ax, 437
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000031162
label000000031112: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 47
	li ax, 438
	push ax
	li ax, 5
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000031162: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 50
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw02
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 52
	li mar, MirrorFace
	memread4 ax
	not ax
	jzi label000000031224
	li ax, "Add some aliens..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000031242
label000000031224: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 55
	li ax, "Annnnd I\'ve ruined it."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000031242: ; inside _run_dialog21$1, ; referenced by 1 spots
	sourceline 56
	li ax, 19
	ret 
label000000031248: ; inside _run_dialog21$1, ; referenced by 4 spots
	sourceline 57
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog22$1: ; 1 args
	sourceline 1
	thisaddr 31258
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031291
	sourceline 3
	li ax, -1
	ret 
	jmpi label000000032171
label000000031291: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 5
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031480
	sourceline 6
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000031371
	li ax, 445
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000031421
label000000031371: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 10
	li ax, 446
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000031421: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw03
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	li ax, "Mm-hm..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 15
	li ax, 19
	ret 
	jmpi label000000032171
label000000031480: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 17
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000031974
	sourceline 18
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000031560
	li ax, 447
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000031610
label000000031560: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 21
	li ax, 448
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000031610: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 23
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw03
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 25
	li ax, "Dowwwn..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 28
	li ax, 6
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 441
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000031769
	push ax
	li ax, 6
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 442
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031769: ; inside _run_dialog22$1, ; referenced by 1 spots
	jzi label000000031966
	sourceline 29
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 29
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000031879
	push ax
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 433
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031879: ; inside _run_dialog22$1, ; referenced by 1 spots
	jnzi label000000031938
	push ax
	li ax, 5
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 434
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000031938: ; inside _run_dialog22$1, ; referenced by 1 spots
	jzi label000000031956
	li ax, "Ha ha. It\'s a little face."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000031956: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 31
	li ax, 1
	li mar, MirrorFace
	memwrite4 ax
label000000031966: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 33
	li ax, 19
	ret 
	jmpi label000000032171
label000000031974: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 35
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032171
	sourceline 36
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000032054
	li ax, 449
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000032104
label000000032054: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 39
	li ax, 450
	push ax
	li ax, 7
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
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000032104: ; inside _run_dialog22$1, ; referenced by 1 spots
	sourceline 41
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aFogDraw03
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 43
	li ax, 1
	li mar, MirrorC
	memwrite4 ax
	sourceline 44
	li ax, "Add a bit of that..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 45
	li ax, 19
	ret 
label000000032171: ; inside _run_dialog22$1, ; referenced by 4 spots
	sourceline 46
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog0$1: ; 1 args
	sourceline 1
	thisaddr 32181
	sourceline 3
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032419
	sourceline 5
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000032315
	sourceline 6
	push op
	li ax, 1
	farpush ax
	li ax, 1
	farpush ax
	li ax, 0
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 7
	push op
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 0
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 8
	jmpi label000000032411
label000000032315: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 10
	push op
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 0
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 11
	push op
	li ax, 1
	farpush ax
	li ax, 2
	farpush ax
	li ax, 0
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000032411: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 13
	li ax, -1
	ret 
	jmpi label000000032900
label000000032419: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 15
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032808
	sourceline 16
	li mar, IsTapHot
	memread4 ax
	not ax
	jzi label000000032782
	sourceline 17
	li ax, 1
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 18
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 920
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 21
	push op
	li ax, 0
	farpush ax
	li ax, "Gotta floss more."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 22
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 16
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 23
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
	li ax, 2
	farpush ax
	li ax, 0
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 24
	ptrstack 4
	ptrzero 
	subi sp, 4
	jmpi label000000032800
label000000032782: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 27
	li ax, "The glass is completely fogged up. Probably for the best."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000032800: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 28
	li ax, -2
	ret 
	jmpi label000000032900
label000000032808: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 30
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000032900
	sourceline 31
	li mar, IsTapHot
	memread4 ax
	not ax
	jzi label000000032858
	li ax, "At least with the lights out I don\'t have to look at what my hair\'s doing."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000032894
label000000032858: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 35
	li ax, "The glass is both dark and completely fogged up."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 36
	li ax, "In other words, it\'s at ideal visibility."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000032894: ; inside _run_dialog0$1, ; referenced by 1 spots
	sourceline 38
	li ax, -2
	ret 
label000000032900: ; inside _run_dialog0$1, ; referenced by 3 spots
	sourceline 40
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog6$1: ; 1 args
	sourceline 1
	thisaddr 32910
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033081
	sourceline 3
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 4
	li ax, 1
	li mar, InDialog
	memwrite4 ax
	sourceline 5
	push op
	li mar, iNecklace
	mr ax, mar
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	not ax
	jzi label000000033037
	li ax, "Maybe I should just go to work..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000033073
label000000033037: ; inside _run_dialog6$1, ; referenced by 1 spots
	sourceline 9
	li ax, "This is getting weird. Really weird. Someone is probably screwing with me, but..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 10
	li ax, "Is it worth sticking around to find out\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000033073: ; inside _run_dialog6$1, ; referenced by 1 spots
	sourceline 12
	li ax, -1
	ret 
	jmpi label000000033416
label000000033081: ; inside _run_dialog6$1, ; referenced by 1 spots
	sourceline 14
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033325
	sourceline 16
	push op
	li mar, iNecklace
	mr ax, mar
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	not ax
	jzi label000000033180
	sourceline 17
	li ax, "This is a problem for a plumber. Or a priest."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 18
	li ax, "Whichever won\'t ask questions."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 19
	jmpi label000000033198
label000000033180: ; inside _run_dialog6$1, ; referenced by 1 spots
	sourceline 22
	li ax, "Screw this."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000033198: ; inside _run_dialog6$1, ; referenced by 1 spots
	sourceline 25
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 26
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDoorClose
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	li ax, 0
	mr bx, ax
	li mar, gHTMLIcons
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 28
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li ax, 305
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
	sourceline 29
	li ax, -1
	ret 
	jmpi label000000033416
label000000033325: ; inside _run_dialog6$1, ; referenced by 1 spots
	sourceline 31
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033416
	sourceline 32
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 33
	li ax, "Focus, focus."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 34
	li ax, 0
	li mar, InDialog
	memwrite4 ax
	sourceline 35
	li ax, -2
	ret 
label000000033416: ; inside _run_dialog6$1, ; referenced by 3 spots
	sourceline 36
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog13$1: ; 1 args
	sourceline 1
	thisaddr 33426
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033747
	sourceline 3
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 4
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 5
	push op
	li ax, "textLook"
	farpush ax
	li mar, iDuck
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, InventoryItem::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 8
	push op
	li ax, 0
	farpush ax
	li ax, "Hi there, duck."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 10
	push op
	li ax, "blood"
	farpush ax
	ptrstack 8
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
	jnzi label000000033679
	push ax
	push op
	li ax, "drenched"
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
	pop bx
	lor bx, ax
	mr ax, bx
label000000033679: ; inside _run_dialog13$1, ; referenced by 1 spots
	jzi label000000033727
	push op
	li ax, 1
	farpush ax
	li ax, 4
	farpush ax
	li ax, 13
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
label000000033727: ; inside _run_dialog13$1, ; referenced by 1 spots
	sourceline 13
	li ax, -1
	ptrstack 4
	ptrzerond 
	subi sp, 4
	ret 
	ptrstack 4
	ptrzero 
	subi sp, 4
	jmpi label000000035305
label000000033747: ; inside _run_dialog13$1, ; referenced by 1 spots
	sourceline 15
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000033927
	sourceline 16
	push op
	li ax, 0
	farpush ax
	li ax, "So you\'re the famous Cool Ranch."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 17
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 18
	push op
	li ax, 0
	farpush ax
	li ax, "You were quite the talk of the computer lab back in the day."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 13
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 20
	li ax, -1
	ret 
	jmpi label000000035305
label000000033927: ; inside _run_dialog13$1, ; referenced by 1 spots
	sourceline 22
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034238
	sourceline 23
	push op
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SetMood
	farcall ax
	farsubsp 1
	pop op
	sourceline 24
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 25
	push op
	li ax, 0
	farpush ax
	li ax, "Must be nice being a duck."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 26
	push op
	li ax, 0
	farpush ax
	li ax, "%a No jobs. No taxes."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 27
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 28
	push op
	li ax, 0
	farpush ax
	li ax, "%a No comprehension of the way showers are supposed to work..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 29
	push op
	li ax, 0
	farpush ax
	li ax, "So simple."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 30
	push op
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	li ax, 13
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 31
	li ax, -1
	ret 
	jmpi label000000035305
label000000034238: ; inside _run_dialog13$1, ; referenced by 1 spots
	sourceline 33
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034499
	sourceline 34
	push op
	li ax, 0
	farpush ax
	li ax, "Do you know how to talk to ghosts\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 35
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
	sourceline 36
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 37
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 38
	push op
	li ax, 0
	farpush ax
	li ax, "Come on, you must have consorted with a few dark ones in your life."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 39
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
	sourceline 40
	li ax, 90
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 41
	push op
	li ax, 0
	farpush ax
	li ax, "I\'ll make you talk one of these days."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 42
	li ax, -1
	ret 
	jmpi label000000035305
label000000034499: ; inside _run_dialog13$1, ; referenced by 1 spots
	sourceline 44
	ptrstack 8
	memread4 ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000034746
	sourceline 45
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 46
	push op
	li ax, 0
	farpush ax
	li ax, "Sorry for almost sacrificing you to the dark bath gods."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 47
	push op
	li ax, 0
	farpush ax
	li ax, "You looked more bloodproof than you actually were."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 48
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
	sourceline 49
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 50
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 51
	push op
	li ax, 0
	farpush ax
	li ax, "It will happen again."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 52
	li ax, -1
	ret 
	jmpi label000000035305
label000000034746: ; inside _run_dialog13$1, ; referenced by 1 spots
	sourceline 54
	ptrstack 8
	memread4 ax
	push ax
	li ax, 5
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000035183
	sourceline 55
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 56
	push op
	li ax, 0
	farpush ax
	li ax, "I wonder how your owner is doing."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 57
	push op
	li ax, 0
	farpush ax
	li ax, "He\'s probably a gajillionaire by now. Hacking mainframes. Reticulating splines."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 58
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 59
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 60
	push op
	li ax, 919
	farpush ax
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 61
	push op
	li ax, 0
	farpush ax
	li ax, "%aWhatever it is coders do when they become British."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 62
	push op
	li ax, 0
	farpush ax
	li ax, "Do you think he...\?"
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 63
	li ax, "..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 64
	push op
	li ax, 919
	farpush ax
	li ax, 2
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 65
	push op
	li ax, 0
	farpush ax
	li ax, "Never mind."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 66
	push op
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	li ax, 13
	assertlte ax, 27
	muli ax, 8
	mr cx, ax
	li mar, dialog
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Dialog::SetOptionState^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 67
	li ax, -1
	ret 
	jmpi label000000035305
label000000035183: ; inside _run_dialog13$1, ; referenced by 1 spots
	sourceline 69
	ptrstack 8
	memread4 ax
	push ax
	li ax, 6
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000035305
	sourceline 70
	push op
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::FaceDirection^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 71
	push op
	li ax, 0
	farpush ax
	li ax, "..."
	newstr ax
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::Speak
	farcall ax
	farsubsp 2
	pop op
	sourceline 72
	li ax, "I\'m talking to a rubber duck."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 73
	setfuncargs 0
	li ax, EndDialog
	farcall ax
	sourceline 74
	li ax, -2
	ret 
label000000035305: ; inside _run_dialog13$1, ; referenced by 7 spots
	sourceline 75
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog16$1: ; 1 args
	sourceline 1
	thisaddr 35315
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000035752
	sourceline 4
	li ax, 20
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
	sourceline 5
	li ax, 4
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 6
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 41
	farpush ax
	li ax, 0
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 7
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 8
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
	li ax, 3
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 10
	li ax, 80
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 12
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 40
	farpush ax
	li ax, 1
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 13
	push op
	li ax, 100
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1062
	farpush ax
	li ax, 919
	farpush ax
	li ax, 0
	farpush ax
	li ax, 7
	farpush ax
	li ax, 0
	farpush ax
	li ax, 1
	assertlte ax, 256
	muli ax, 8
	mr cx, ax
	li mar, object
	add mar, cx
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 14
	li ax, 0
	mr bx, ax
	li mar, gSplash
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 15
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 16
	li ax, 1
	mr bx, ax
	li mar, mouse
	mr ax, mar
	farpush bx
	setfuncargs 1
	li ax, Mouse::set_Visible
	farcall ax
	farsubsp 1
	sourceline 17
	li ax, 0
	li mar, JustLoaded
	memwrite4 ax
	sourceline 18
	li ax, -2
	ret 
label000000035752: ; inside _run_dialog16$1, ; referenced by 1 spots
	sourceline 19
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog25$1: ; 1 args
	sourceline 1
	thisaddr 35762
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000035880
	sourceline 3
	li ax, 1
	li mar, InDialog
	memwrite4 ax
	sourceline 4
	li ax, 40
	farpush ax
	li ax, -16777216
	farpush ax
	setfuncargs 2
	li ax, WaitInput
	farcall ax
	farsubsp 2
	sourceline 5
	li ax, "Hey, welcome back. It looks like you\'ve played a different build of Pipes on this computer before."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 6
	li ax, "Save files unfortunately aren\'t cross-compatible."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 7
	li ax, "Would you like to clear your old data now\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 8
	li ax, -1
	ret 
	jmpi label000000038226
label000000035880: ; inside _run_dialog25$1, ; referenced by 1 spots
	sourceline 10
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000038131
	sourceline 11
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 12
	push op
	li ax, "$APPDATADIR$/settings.ini"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, IniFile::Load^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 13
	push op
	li ax, 1065520988
	farpush ax
	li ax, "version"
	newstr ax
	farpush ax
	li ax, "version"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteFloat^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 15
	li ax, 999
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000035994: ; inside _run_dialog25$1, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000036043
	sourceline 17
	ptrstack 4
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, DeleteSaveSlot
	farcall ax
	farsubsp 1
	sourceline 18
	ptrstack 4
	memread4 ax
	subi ax, 1
	memwrite4 ax
	jmpi label000000035994
label000000036043: ; inside _run_dialog25$1, ; referenced by 1 spots
	subi sp, 4
	sourceline 20
	push op
	li ax, "$APPDATADIR$/settings.ini"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, IniFile::Save^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 22
	li ax, "Done. Happy declogging!"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 23
	li ax, 0
	li mar, InDialog
	memwrite4 ax
	sourceline 25
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 26
	li ax, 26
	ptrstack 1004
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	subi sp, 1004
	ret 
	ptrstack 1004
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	subi sp, 1004
	jmpi label000000038226
label000000038131: ; inside _run_dialog25$1, ; referenced by 1 spots
	sourceline 29
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000038226
	sourceline 30
	li ax, "No problem. Your data has not been changed."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 31
	li ax, "See you later!"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 33
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 35
	li ax, 0
	farpush ax
	setfuncargs 1
	li ax, QuitGame
	farcall ax
	farsubsp 1
	sourceline 36
	li ax, -2
	ret 
label000000038226: ; inside _run_dialog25$1, ; referenced by 3 spots
	sourceline 37
	li ax, -1
	ret 
	li ax, 0
	ret 

_run_dialog26$1: ; 1 args
	sourceline 1
	thisaddr 38236
	sourceline 2
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000038703
	sourceline 3
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
	sourceline 4
	li ax, 0
	mr bx, ax
	li mar, mouse
	mr ax, mar
	farpush bx
	setfuncargs 1
	li ax, Mouse::set_Visible
	farcall ax
	farsubsp 1
	sourceline 5
	li ax, 4
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 6
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 7
	push op
	li ax, 31998
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDripA
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 8
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 9
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 10
	push op
	li ax, 31998
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDripA
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 11
	li ax, 2
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 12
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 13
	push op
	li ax, 31998
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDripA
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 14
	li ax, 3
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 15
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 16
	push op
	li ax, 31998
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDripA
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 17
	li ax, 0
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 18
	li ax, 180
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 19
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 20
	li ax, 15
	farpush ax
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 4
	li ax, playAnimation
	farcall ax
	farsubsp 4
	sourceline 21
	push op
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li ax, 31998
	farpush ax
	li ax, 301
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
	sourceline 22
	li ax, -2
	ret 
label000000038703: ; inside _run_dialog26$1, ; referenced by 1 spots
	sourceline 23
	li ax, -1
	ret 
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
"__NEWSCRIPTSTART_Observation Text.ash"
"__NEWSCRIPTSTART_Menu Stuff.ash"
"__NEWSCRIPTSTART_GlobalScript.ash"
"__NEWSCRIPTSTART___DialogScripts.asc"
"__NEWSCRIPTSTART_Dialog 1"
""
"__NEWSCRIPTSTART_Dialog 2"
"What the hell...\?"
"What\'s wrong with the water\? It\'s red, and gooey... and..."
"Ugh smells TERRIBLE in here."
"That can\'t be blood. Can it\?"
"Did I-\?"
"No. Don\'t be stupid, Clarissa. You know what you did last night."
"Six hours minding the store. An extra two hours past close, cleaning up after those brats."
"Then bed."
"There\'s no room for... for murderous blackouts in that timeline."
"..."
"Maybe I\'ll check the store security footage later. Just in case."
"Come to think of it, it\'s been- what, 18 hours since I was in here\?"
"Someone could have sneaked past me in that time."
"%a And died\?"
"%a In my bathroom."
"What am I even saying."
"You would\'ve noticed if your apartment was unlocked. You would\'ve noticed the smell, too."
"Besides, there\'s no body. And one person couldn\'t bleed *this* much."
"How many other stores are on this pipeline\?"
"Maybe someone dumped a litre of paint down their sink\?"
"Sure doesn\'t smell like paint..."
"It can\'t be real blood. It just can\'t."
"%a So then... what is it\?"
"Maybe it\'s some kind of rust\?"
"Or fungus\?"
"I doubt the council\'s checked the main in some time."
"It could be a buildup of plant or dirt."
"Extremely red dirt."
"..."
"The pipes have been creakier than usual lately..."
"Okay. Standing around gawking doesn\'t change the fact I need a shower."
"I can deal with a blockage. I might have to skip breakfast, but--"
"*RING RING*"
"Huh\?"
"Who could it be at this hour\?"
"__NEWSCRIPTSTART_Dialog 3"
"\?\?\?"
"...Video Nine. Clarissa speaking."
"Ms. Dunst\?"
"Ingrid"
"Ingrid\? It\'s four in the morning. Why are you awake\?"
"Uhh, yeah, so... You said we\'re supposed to give, like, two hours notice if we can\'t come in. Right\?"
"That\'s true. Yes."
"Awesome. \'Cause I got food poisoning. REAL bad. Shittin\' everywhere."
"Sooo I kinda can\'t open today. Sorry."
"..."
"You\'re lying to me."
"I\'m lying to you."
"Let me guess. You forgot to study."
"Yeah the exam is in like eight hours."
"Right. Go to sleep."
"How about YOU go to sleep\?"
"I have a store to run and a shower to fix, Ingrid."
"Oh yeah, hahaha."
"Wait what\'s wrong with your shower\?"
"I don\'t know. The tub\'s drain is clogged and there\'s all this red liquid in it."
"Red\?"
"Blood red."
"..."
"Sooo... did flushing the body down the toilet not work, orrrr..."
"Ingrid."
"Kidding! Jeez. But seriously that\'s spooky."
"It\'s annoying is what it is."
"Maybe it\'s a..."
"Don\'t."
"A..."
"%a G-g-g-ghooooooooooooooooost!"
"How about we blame Sadako AFTER a plumber rules everything else out."
"A plumber\? Before midday\? Yeah good luck with that."
"Hey, call me if anything weird happens, will you\? I\'m invested now."
"Plus if I don\'t take a break every five minutes I think my head will explode."
"I\'ll think about it."
"%a Good night, Ingrid."
"*Click*"
"*Sigh* It would be nice to have someone my own age to call for advice, but I suppose Ingrid will do."
"Besides. If she\'s hellbent on pulling an all-nighter, I guess I can\'t make that any worse."
"__NEWSCRIPTSTART_Dialog 4"
"Zheng residence, Zheng speaking."
"Hi Ingrid. I must say, your phone manner has really improved these past few months."
"%a ...Even if it\'s still a tad redundant."
"Yeah yeah yeah. Whaddya want\?"
"Me again."
"Figured. Hey do you know if there\'s a way to, like, make the ringer quieter\?"
"%a I don\'t want mum to think I\'m sellin\' meth again."
"That raises several questions."
"Her logic is real weird and only gets worse when she hasn\'t slept right."
"Hm. Try covering it with a pillow."
"Will do. Anyway what\'s up\?"
"Hi, Ingrid. Got some-"
"Dude you are echoing a LOT. Is there somethin\' wrong with th-"
"%a Wait, do you keep your landline in the bathroom\?"
"Shut up."
"You need to relax more. Anyway, what happened this time\?"
"Hey Ingr%DONTWAIT"
"THIRTY-SEVEN."
"Huh\?"
"Sorry I mean hi. I got distracted by the prac. That\'s been buggin\' me for an hour."
"What were you gonna say\?"
"Good - *YAWN* - morning. Zheng residence."
"I appreciate the upkeep of phone formalities."
"Hahaha... yeah. Might\'ve asked a wrong number for some coffee powder to snort a few minutes ago..."
"So, what did you need\?"
"Zheng talking."
"...Ingrid, you sound exhausted. Go to sleep."
"How\'m I gonna do that if you keep ringing me\?"
"Then I\'ll stop."
"Please no I have algebra to burn into my eyeballs."
"Zheng household, Ingrid speakin\'."
"Hi again. There\'s something I wanted to ask you."
"...Hellooooo\?"
"Hi, Ingrid. Me again."
"Jeez Ms. D. I, like, JUST put the phone down."
"%a Anyway what\'s up\?"
"__NEWSCRIPTSTART_Dialog 5"
"I could use your perspective on something."
"How is your studying going\?"
"Ugh. Next question."
"All right. Why did you leave it to the last second again\?"
"Dude do you know how hard it is trying to get quiet time in this house\?"
"The AM\'s are like, the only time I\'m NOT working and mum ISN\'T breathing down my neck."
"Maybe you\'re right. Maybe I shoulda just gone to bed."
"Don\'t say that."
"It\'s not like a few hours are gonna fu--"
"%a effin\'... make my ENTER go up."
"You sure you don\'t want me to come over\? Sounds like less of a waste of time than%DW"
"*No.*"
"%a No."
"You are not throwing your grades away just to help me fix a pipe."
"Okay, okay! Sheesh."
"..."
"So... you got any tips for calculatin\' the median circumference of a teenager\'s skull\?"
"I\'ll get back to you."
"I should go."
"Good luck in there, Venkmann!"
"Don\'t slip n\' crack your head on a toilet bowl!"
"You know where to find me, Mario Bro."
"Say hi to the ghouls for me!"
"Don\'t get possessed!"
"Exorcise safe!"
"__NEWSCRIPTSTART_Dialog 7"
"To tell the truth, Ingrid, I have no idea what I\'m doing."
"%a I\'ve never had to plumb my own bathroom before."
"Why don\'t you try getting rid of the gunk\?"
"What, with a bucket\?"
"No, stupid. I mean using the actual drain."
"D\'you know what\'s clogging it\?"
"%a Did you leave the plug in\? Is there an arm stickin\' out of the pipe\?"
"It\'s hard to tell just by looking. And I\'d rather not touch... whatever this is."
"Well I\'m not gonna do it for you."
"%a Maybe you can knock it loose with somethin\'\?"
"I dunno. It\'s your bathroom. Look around."
"I\'ve got a hypothetical for you, Ingrid."
"Shoot."
"Let\'s say I removed a blockage. And I know I\'ve removed it. But the water isn\'t draining."
"What should I do\?"
"Spooooooky."
"It\'s not a ghost!"
"Well it doesn\'t sound like a plumbing thing, either!"
"So maybe we should start talking spectral."
"Do you... Do you actually think it could be a ghost\?"
"Huh\? I was just quoting that movie you had playing on the TVs the other day."
"%a \"Roommates\", or whatever."
"Why\? Do you\?"
"Regardless of whether or not this is an actual haunting, let\'s try thinking of it as one."
"Let\'s pretend there\'s a ghost in my bathroom. How would I remove it\?"
"Uhh... I dunno. Do whatever they do in the movies I guess."
"Like you said - ghosts ain\'t easy to see, yeah\? They\'re always hiding, or invisible, or whatever."
"%a So maybe you gotta find a way to actually talk to it\?"
"This is getting ridiculous."
"You\'re the movie nerd. All I know is that the lights\'re usually off in those scenes."
"%a And, like, there\'s usually a lotta fog."
"Because it\'s harder to see the flaws in the puppets when all you have is candlelight and steam."
"Still! I\'m sure somethin\' you\'ve watched has a clue."
"Hey, Ingrid. Guess what I found."
"*Squeak*"
"Yo! I knew it! You DO have a rubber duck collection!"
"It\'s not mine. It\'s a friend\'s."
"You have friends\?"
"Anyway quit being such a killjoy Ms. D. Float that bad boy."
"So I found an old rubber duck in one of my cupboards..."
"Yo! I knew it! You DO collect them!"
"It\'s not mine. It\'s a friend\'s."
"You have friends\?"
"%a Anyway I hear ducks are real good at helping people work through problems. Yours could have a plumbing degree."
"This one looks like a freeloader. It\'s just floating around."
"Maybe he can\'t work under these conditions. You ever think about that\?"
"You got him basic plumbing supplies\? Dumbass\?"
"And the light\'s probably in his eyes. Idiot."
"I have some bad news about Cool Ranch."
"Oh shit is the Buyer\'s Direct recalling all the salad dressing\?"
"No! I\'m talking about J-"
"%a about my friend\'s rubber duck."
"I dropped it in the bath and it sunk like a rock."
"Well that\'s about the saddest thing I ever heard from a forty year-old."
"I\'m twenty-nine, Ingrid%DW"
"You sure it didn\'t just fall outta the tub when you weren\'t looking\?"
"Get a light in there. See where it went."
"So my sink exploded."
"Wow."
"%a Y\'know now that you mention it I\'ve heard about stuff like that happening."
"After water gets turned off or clogged for a while there\'s like... air bubbles\? In the pipes\?"
"So when you flip it on again the faucet\'s all SPLWWWSSHSHSHHHHSHSHSHSHHH."
"Just be careful turnin\' things off and on I guess. Make sure there\'s nothin\' down there first."
"Hm."
"Ingrid, um... The mirror, it..."
"..."
"%aMs. D\?"
"I saw..."
"..."
"F-forget it."
"Dude, you sound real freaked. Tell me."
"No."
"%a No, it\'s... fine. I\'m just tired and angry and imagining shit."
"This has got to be a prank. It\'s probably a prank by HER."
"It\'s not hard to fake mirror writing. All it takes is a bit of grease to block condensation, and..."
"Whatever the punchline to this bullshit is, I\'m sure I\'ll find it near that arrow."
"Uh. O-kay then."
"%a So glad you called to tell me nothing."
"Super cool of you."
"Ingrid, I am going to ask you something in complete seriousness. And I need you to answer seriously too."
"Okay... weirdly intense but what\'s up\?"
"Have you, at any point over the past week, used the upstairs bathroom\?"
"What\? No."
"You\'re positive\? Because if this is the setup to another joke-"
"Dude I\'ve told you like five times, the store bathroom is nasty and your apartment\'s is no better."
"I use the Git Fit\'s bathroom."
"And you\'ve never snuck up there for any other purpose, or hidden anything behind any of my cabinets."
"No\?\?"
"%a Oh, man, you found something didn\'t you\?"
"Yeah. It looks like an amber pendant."
"Rad."
"It has a praying mantis inside."
"Still rad."
"And I think... I think the thing in the tub..."
"..."
"%aYou screwin\' with me\?"
"Are you screwing with *me\?*"
"Ms. D, you are my boss and capable of financially wrecking my shit if you wanted to."
"So know I say this with that in mind:"
"%a Hurl that thing in a dumpster and find some place else to piss."
"Okay\?"
"Never mind."
"Oh, you wanna talk about something else\?"
"__NEWSCRIPTSTART_Dialog 8"
"Yes."
"Wait really\? You\?"
"%a The woman who irons her jean skirts believes in ghosts."
"It\'s hard to put into words, but..."
"I think it\'s silly to assume I know what happens after death."
"%a Not when I know so little about life."
"And now my bathtub is bleeding. So either life is being very weird, or something else is."
"Thiiiiis is getting a little too real for me, boss."
"I don\'t know. Most ghost stories are about people you can\'t see."
"I can\'t make a definitive argument over the existance of something - or someone - so intangible."
"%a So it\'s not worth thinking about."
"Well, one of them unseen people might be manifesting sludge in your bathroom."
"And there\'s a lot of other things that might be causing it, too."
"%a So rather than arguing about the cause, let\'s focus on fixing the symptoms."
"Okay\?"
"No."
"Don\'t lie to me, you live for that shit."
"One, watch your language. And two, I live for *horror*."
"Just because I like to see a good old fashioned practical effect decapitation doesn\'t mean I think invisible people are in my house."
"Invisible people\? M-Ms. Dunst..."
"Here we go."
"Th-this phonecall..."
"%a It\'s COMING FROM INSIDE THE-%DONTWAIT"
"No it isn\'t!"
"You can\'t prove it\'s not, man! I know where you live!"
"Don\'t make me check the cameras in my underpants, Ingrid."
"I won\'t be happy."
"..."
"..."
"Wait. Wait, seriously\?\?"
"Shut up."
"HAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%DONTWAIT"
"Shut up! I don\'t have to take this from a Benjamin Evergreen theorist!"
"Hee-- *snrk*"
"%a Okay, but my theory actually makes sense\? You saw the doco on SBS, the man\'s WAY too talented to have been offed by the mob."
"He\'d be 104, Ingrid. No."
"Still makes more sense than thinking there\'s invisible people in your house!"
"__NEWSCRIPTSTART_Dialog 24"
"Look."
"%aRegardless of whether this is an actual haunting, let\'s try thinking of it as one."
"Let\'s pretend there\'s a ghost in my bathroom. How would I remove it\?"
"Uhh... I dunno. Do whatever they do in the movies I guess."
"Like you said - ghosts ain\'t easy to see, yeah\? They\'re always hiding, or invisible, or whatever."
"%a So maybe you gotta find a way to actually talk to it\?"
"This is getting ridiculous."
"You\'re the movie nerd. All I know is that the lights\'re usually off in those scenes."
"%a And, like, there\'s usually a lotta fog."
"Because it\'s harder to see the flaws in the puppets when all you have is candlelight and steam."
"Still! I\'m sure somethin\' you\'ve watched has a clue."
"__NEWSCRIPTSTART_Dialog 9"
"It\'s... an amber necklace\?"
"%aAt least I think it\'s amber."
"What\'s it doing in my bathroom\? Have I never cleaned down the back of the sink\?"
"And... if there really is something in the tub..."
"And it wants this thing..."
"..."
"__NEWSCRIPTSTART_Dialog 10"
"This is what you\'re after, isn\'t it\?"
"%a This necklace, and then you\'ll leave me alone\?"
"Actually, fuck that."
"Fine."
"Have it."
"%a Now, will you please get out of my tub\?"
"What the hell am I doing\?"
"%a This is just a huge waste of time%DONTWAIT"
"%a This is just a huge waste of time--"
"Fine."
"Have it."
"%a Now, will you please get out of my tub\?"
"...Nothing\?"
"%a Nothing at all\?!"
"Great. Super."
"Can\'t believe I let Ingrid talk me into believing complete *horseshit*."
"..."
"%aNothing left to do but go to work, I suppose."
"__NEWSCRIPTSTART_Dialog 14"
"U-uhhh..."
"__NEWSCRIPTSTART_Dialog 11"
"You\'ve reached Video Nine\'s answering machine. Business hours are between 8 AM - 11 PM."
"Please leave a message, and one of our friendly staff will-%DONTWAIT"
"__NEWSCRIPTSTART_Dialog 12"
"...Ms. Dunst\?"
"%a I-it\'s me. You- you weren\'t answering, so I-"
"Look I\'m coming in. Please have pants on..."
"Euughh... smells like a sewer in here..."
"%a Where the hell\'s the...\? Ah."
"Ohh man."
"Ms. Dunst wasn\'t kidding. That- that SERIOUSLY look like blood."
"Is this a prank\? No she- oh man what if she actually hurt herself\?"
"Should I call the cops\? I should definitely call the cops%DW"
"GAAAAAAAAAAAAAAAAAAAAAAAAFUCK- %DONTWAIT"
"CAN WE GET SOME HELP HERE PLEASE"
"AAAAAAAAAAGHHHHINEEDAPLUNGER"
"CAN I GET SOME HELP HERE PLEASE"
"__NEWSCRIPTSTART_Dialog 15"
"__NEWSCRIPTSTART_Dialog 23"
"...Ms. Dunst\?"
"%a I-it\'s me. You- you weren\'t answering, so I-"
"Look I\'m coming in. Please have pants on..."
"Euughh... smells like a sewer in here..."
"%a Where the hell\'s the...\? Ah."
"Ohh man."
"Ms. Dunst wasn\'t kidding. That- that SERIOUSLY look like blood."
"Is this a prank\? No she- oh man what if she actually hurt herself\?"
"Should I call the cops\? I should definitely call the cops--"
"GAAAAAAAAAAAAAAAAAAAAAAAAFUCK-"
"CAN WE GET SOME HELP HERE PLEASE"
"AAAAAAAAAAGHHHHINEEDAPLUNGER"
"CAN I GET SOME HELP HERE PLEASE"
"__NEWSCRIPTSTART_Dialog 17"
"Ugh... my hair feels disgusting."
"Excuse me, I\'m looking for the owner\?"
"Mmmh\?"
"I got a call about a blocked pipe."
"Oh. Yeah. Right."
"%a The bathroom\'s upstairs. Door\'s over there."
"At least he got here quickly."
"This is going to cost a fortune-"
"*sfx: screaming is heard from upstairs*"
"This is going to cost a fortune-%DONTWAIT"
"!!!"
"Ohhhhhhhhhhhhhhhhhhhhhhhhhhhhshit-"
"__NEWSCRIPTSTART_Dialog 18"
"Ugh, what a week..."
"What am I going to do\? I can\'t keep relying on the gym\'s showers."
"*Sigh*"
"Maybe I\'m overreacting. Maybe I *should* call a plumber."
"Yo, Ms. D\?"
"Mmmh\?"
"So I know you wanted me to restock, but uhh..."
"I think there might be something wrong with that last delivery\?"
""
"__NEWSCRIPTSTART_Dialog 19"
"There\'s enough finger-grease on there as it is."
"Hmm. Come to think of it, this looks like the seance sigil they used in the Miranda Manor movie."
"Of course, nothing\'s happening. It\'s all a load of nonsense."
"...Unless I missed a step\?"
"Whatever. I\'ll let the steam clean this up."
"There. One tacky seance sigil from one tacky movie."
"Am I really so desperate for a shower I\'m trying *this*\?"
"Whatever. I\'ll let the steam clean this up."
"...\?\?"
"Fun. I\'ll let the steam clean it up."
"__NEWSCRIPTSTART_Dialog 20"
"There. My reflection is now banned."
"Zoop."
"Mmm-hm... Yep..."
"Ha ha. It\'s a little face."
"One, two, three..."
"__NEWSCRIPTSTART_Dialog 21"
"There. My reflection is now banned."
"Smooth and inoffensive."
"...Circle it like that..."
"Bullseye."
"Annnnd I\'ve ruined it."
"Add some aliens..."
"Annnnd I\'ve ruined it."
"__NEWSCRIPTSTART_Dialog 22"
"Mm-hm..."
"Dowwwn..."
"Ha ha. It\'s a little face."
"Add a bit of that..."
"__NEWSCRIPTSTART_Dialog 0"
"..."
"Gotta floss more."
"The glass is completely fogged up. Probably for the best."
"At least with the lights out I don\'t have to look at what my hair\'s doing."
"The glass is both dark and completely fogged up."
"In other words, it\'s at ideal visibility."
"__NEWSCRIPTSTART_Dialog 6"
"Maybe I should just go to work..."
"This is getting weird. Really weird. Someone is probably screwing with me, but..."
"Is it worth sticking around to find out\?"
"This is a problem for a plumber. Or a priest."
"Whichever won\'t ask questions."
"Screw this."
"Focus, focus."
"__NEWSCRIPTSTART_Dialog 13"
"textLook"
"Hi there, duck."
"blood"
"drenched"
"So you\'re the famous Cool Ranch."
"You were quite the talk of the computer lab back in the day."
"Must be nice being a duck."
"%a No jobs. No taxes."
"%a No comprehension of the way showers are supposed to work..."
"So simple."
"Do you know how to talk to ghosts\?"
"Come on, you must have consorted with a few dark ones in your life."
"I\'ll make you talk one of these days."
"Sorry for almost sacrificing you to the dark bath gods."
"You looked more bloodproof than you actually were."
"It will happen again."
"I wonder how your owner is doing."
"He\'s probably a gajillionaire by now. Hacking mainframes. Reticulating splines."
"..."
"%aWhatever it is coders do when they become British."
"Do you think he...\?"
"..."
"Never mind."
"..."
"I\'m talking to a rubber duck."
"__NEWSCRIPTSTART_Dialog 16"
"__NEWSCRIPTSTART_Dialog 25"
"Hey, welcome back. It looks like you\'ve played a different build of Pipes on this computer before."
"Save files unfortunately aren\'t cross-compatible."
"Would you like to clear your old data now\?"
"$APPDATADIR$/settings.ini"
"version"
"version"
"$APPDATADIR$/settings.ini"
"Done. Happy declogging!"
"No problem. Your data has not been changed."
"See you later!"
"__NEWSCRIPTSTART_Dialog 26"
""
.imports
000000000000""
000000000001""
000000000002""
000000000003""
000000000004""
000000000005""
000000000006"String::IndexOf^1"
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
000000000100"QuitGame"
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
000000000112"RestartGame"
000000000113""
000000000114""
000000000115"DeleteSaveSlot"
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
000000000146"Mouse::get_Visible"
000000000147"Mouse::set_Visible"
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
000000000190"InventoryItem::GetTextProperty^1"
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
000000000255"SetBackgroundFrame"
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
000000000281"WaitMouseKey"
000000000282""
000000000283""
000000000284"WaitInput"
000000000285""
000000000286""
000000000287""
000000000288""
000000000289""
000000000290"StartCutscene"
000000000291"EndCutscene"
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
000000000500"Dialog::SetOptionState^2"
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
000000000556"AudioChannel::Stop^0"
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
000000000577"AudioClip::Stop^0"
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
000000000606"Object::Animate^7"
000000000607""
000000000608""
000000000609""
000000000610""
000000000611""
000000000612""
000000000613""
000000000614""
000000000615""
000000000616"Object::SetView^3"
000000000617""
000000000618""
000000000619""
000000000620""
000000000621"Object::get_Baseline"
000000000622"Object::set_Baseline"
000000000623""
000000000624""
000000000625""
000000000626""
000000000627""
000000000628""
000000000629""
000000000630"Object::get_Graphic"
000000000631"Object::set_Graphic"
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
000000000642"Object::get_Visible"
000000000643"Object::set_Visible"
000000000644"Object::get_X"
000000000645"Object::set_X"
000000000646"Object::get_Y"
000000000647"Object::set_Y"
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
000000000668"Character::ChangeRoom^4"
000000000669""
000000000670"Character::ChangeView^1"
000000000671""
000000000672""
000000000673""
000000000674""
000000000675""
000000000676""
000000000677""
000000000678"Character::HasInventory^1"
000000000679""
000000000680""
000000000681"Character::LockView^2"
000000000682""
000000000683""
000000000684""
000000000685"Character::LoseInventory^1"
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
000000000741"Character::get_Name"
000000000742"Character::set_Name"
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
000000000773"Character::FaceDirection^2"
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
000000000792"Character::get_x"
000000000793"Character::set_x"
000000000794"Character::get_y"
000000000795"Character::set_y"
000000000796"Character::get_z"
000000000797"Character::set_z"
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
000000000824"Game::get_InSkippableCutscene"
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
000000000924"mouse"
000000000925"game"
000000000926"object"
000000000927""
000000000928""
000000000929""
000000000930""
000000000931""
000000000932""
000000000933""
000000000934""
000000000935"cSink"
000000000936"cClarissa"
000000000937""
000000000938"cIngrid"
000000000939"cPhone"
000000000940"cPlumber"
000000000941"aBGM_Four_Standard"
000000000942"aBGM_Four_Tinny"
000000000943"aBathLoop"
000000000944""
000000000945""
000000000946"aAmbienceCreakyPipes"
000000000947""
000000000948""
000000000949""
000000000950""
000000000951""
000000000952""
000000000953""
000000000954"aDuckC"
000000000955"aDuckD"
000000000956"aWaterSpout"
000000000957""
000000000958""
000000000959""
000000000960""
000000000961""
000000000962"aGhostWind"
000000000963""
000000000964"aPhoneRingMuffled"
000000000965""
000000000966"aHangUp"
000000000967""
000000000968""
000000000969""
000000000970""
000000000971""
000000000972"aDoorOpen_InspectorJ"
000000000973"aDoorKnock"
000000000974"aViolinSting"
000000000975"aPlumberKill"
000000000976"aDripA"
000000000977"aLightswitch"
000000000978""
000000000979""
000000000980"aGhostSuspense"
000000000981""
000000000982""
000000000983""
000000000984""
000000000985""
000000000986"aFogDraw01"
000000000987"aFogDraw02"
000000000988"aFogDraw03"
000000000989"aDoorClose"
000000000990""
000000000991""
000000000992""
000000000993""
000000000994""
000000000995""
000000000996""
000000000997"iDuck"
000000000998"iBroom"
000000000999""
000000001000""
000000001001""
000000001002"iNecklace"
000000001003"dialog"
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
000000001032"gActionBar"
000000001033"lblAction"
000000001034"gDialog"
000000001035"lblDialog"
000000001036"gSplash"
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
000000001113"gHTMLIcons"
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
000000001137"InDialog"
000000001138""
000000001139""
000000001140"chanAmbient"
000000001141""
000000001142"chanSFX"
000000001143"chanBGM"
000000001144"BathroomLightOn"
000000001145"clarX"
000000001146"clarY"
000000001147"PhoneRinging"
000000001148""
000000001149"TopicSinkExplosion"
000000001150"IsTapHot"
000000001151""
000000001152"leavingRoom"
000000001153""
000000001154"LitCandles"
000000001155"chanAmbientB"
000000001156"chanAmbientC"
000000001157"IngridCounter"
000000001158"EndingSequenceTriggered"
000000001159"JustLoaded"
000000001160"MirrorFace"
000000001161"MirrorA"
000000001162"MirrorB"
000000001163"MirrorC"
000000001164"MirrorComplete"
000000001165"GotDuck"
000000001166"DrainClear"
000000001167"DisableJumpscares"
000000001168"PlayingInBrowser"
000000001169""
000000001170"Character::SetMood"
000000001171"PrepareClarissa"
000000001172"ResetClarissa"
000000001173""
000000001174""
000000001175""
000000001176""
000000001177""
000000001178""
000000001179"IniFile::Load^1"
000000001180"IniFile::Save^1"
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
000000001194"IniFile::WriteFloat^3"
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
000000001258"Object::TweenX"
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
000000001534"showSplash"
000000001535""
000000001536""
000000001537"playAnimation"
000000001538"moveRoom"
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
000000001553"Character::Speak"
000000001554""
000000001555""
000000001556"Narrate"
000000001557""
000000001558""
000000001559""
000000001560""
000000001561""
000000001562"EndDialog"
000000001563""
000000001564""
000000001565""
000000001566""
000000001567""
000000001568""
000000001569""
000000001570""
000000001571""
000000001572""
000000001573""
000000001574""
000000001575""
000000001576""
000000001577"dialog_request"
.exports
000000000000"targetContainer"
2:000000000004
000000000001"_run_dialog_request$1"
1:000000000000
000000000002"_run_dialog1$1"
1:000000000317
000000000003"_run_dialog2$1"
1:000000002110
000000000004"_run_dialog3$1"
1:000000004559
000000000005"_run_dialog4$1"
1:000000006043
000000000006"_run_dialog5$1"
1:000000007880
000000000007"_run_dialog7$1"
1:000000009175
000000000008"_run_dialog8$1"
1:000000013640
000000000009"_run_dialog24$1"
1:000000015092
000000000010"_run_dialog9$1"
1:000000015547
000000000011"_run_dialog10$1"
1:000000016030
000000000012"_run_dialog14$1"
1:000000018507
000000000013"_run_dialog11$1"
1:000000019894
000000000014"_run_dialog12$1"
1:000000020618
000000000015"_run_dialog15$1"
1:000000022641
000000000016"_run_dialog23$1"
1:000000022771
000000000017"_run_dialog17$1"
1:000000024684
000000000018"_run_dialog18$1"
1:000000026568
000000000019"_run_dialog19$1"
1:000000027597
000000000020"_run_dialog20$1"
1:000000029228
000000000021"_run_dialog21$1"
1:000000030332
000000000022"_run_dialog22$1"
1:000000031258
000000000023"_run_dialog0$1"
1:000000032181
000000000024"_run_dialog6$1"
1:000000032910
000000000025"_run_dialog13$1"
1:000000033426
000000000026"_run_dialog16$1"
1:000000035315
000000000027"_run_dialog25$1"
1:000000035762
000000000028"_run_dialog26$1"
1:000000038236
.sections
"__DialogScripts.asc" = 0
"Dialog 1" = 317
"Dialog 2" = 2110
"Dialog 3" = 4559
"Dialog 4" = 6043
"Dialog 5" = 7880
"Dialog 7" = 9175
"Dialog 8" = 13640
"Dialog 24" = 15092
"Dialog 9" = 15547
"Dialog 10" = 16030
"Dialog 14" = 18507
"Dialog 11" = 19894
"Dialog 12" = 20618
"Dialog 15" = 22641
"Dialog 23" = 22771
"Dialog 17" = 24684
"Dialog 18" = 26568
"Dialog 19" = 27597
"Dialog 20" = 29228
"Dialog 21" = 30332
"Dialog 22" = 31258
"Dialog 0" = 32181
"Dialog 6" = 32910
"Dialog 13" = 33426
"Dialog 16" = 35315
"Dialog 25" = 35762
"Dialog 26" = 38236

