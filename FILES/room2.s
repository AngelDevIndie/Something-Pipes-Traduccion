.data
int var000000 = 0 ; unreferenced variable, assuming char
export char targetContainer = 0
char[31] var000005 = 0 ; unreferenced variable, assuming char
int var000036 = 0
int var000040 = 0
int var000044 = 0 ; unreferenced variable, assuming char
int var000048 = 19
.text

LightsOn$0: ; 0 args
	sourceline 11
	thisaddr 0
	sourceline 12
	push op
	li mar, aAmbienceGhostWind
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, AudioClip::Stop^0
	farcall ax
	pop op
	sourceline 16
	li ax, 0
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 17
	li mar, @var000048
	memread4 ax
	mr bx, ax
	li mar, oTowel
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 18
	li ax, 13
	mr bx, ax
	li mar, oLaundry
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 19
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 8
	farpush ax
	li mar, oBathtub
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
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
	li ax, 1
	farpush ax
	li ax, 60
	farpush ax
	li ax, 0
	farpush ax
	li mar, oBathtub
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 21
	li ax, 1
	li mar, BathroomLightOn
	memwrite4 ax
	sourceline 23
	li ax, 0
	ret 

LightsOff$0: ; 0 args
	sourceline 27
	thisaddr 217
	sourceline 28
	li mar, @var000040
	memread4 ax
	jnzi label000000000245
	push ax
	li mar, LitCandles
	memread4 ax
	pop bx
	lor bx, ax
	mr ax, bx
label000000000245: ; inside LightsOff$0, ; referenced by 1 spots
	jzi label000000000287
	push op
	li ax, 1
	farpush ax
	li ax, 1
	farpush ax
	li mar, aAmbienceGhostWind
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	li mar, chanAmbientB
	push mar
	pop mar
	ptrset ax
label000000000287: ; inside LightsOff$0, ; referenced by 1 spots
	sourceline 31
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	sourceline 32
	li ax, 150
	mr bx, ax
	li mar, oTowel
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 33
	li ax, 149
	mr bx, ax
	li mar, oLaundry
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 34
	li ax, 74
	mr bx, ax
	li mar, oBathtub
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 35
	li ax, 0
	li mar, BathroomLightOn
	memwrite4 ax
	sourceline 36
	li ax, 0
	ret 

CreakMetal$0: ; 0 args
	sourceline 39
	thisaddr 412
	sourceline 40
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
	jnzi label000000000488
	push ax
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
	pop bx
	lor bx, ax
	mr ax, bx
label000000000488: ; inside CreakMetal$0, ; referenced by 1 spots
	jzi label000000000601
	li mar, chanAmbientC
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000000601
	li mar, chanAmbientC
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_PlayingClip
	farcall ax
	pop op
	push ax
	li mar, aAmbienceCreakyPipes
	mr ax, mar
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000000601
	push op
	li ax, 1
	farpush ax
	li ax, 75
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
label000000000601: ; inside CreakMetal$0, ; referenced by 3 spots
	sourceline 44
	li ax, 0
	ret 

room_Load$0: ; 0 args
	sourceline 47
	thisaddr 607
	sourceline 48
	li mar, PlayingInBrowser
	memread4 ax
	jzi label000000000672
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
	li ax, Character::get_PreviousRoom
	farcall ax
	pop op
	push ax
	li ax, 8
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000000672: ; inside room_Load$0, ; referenced by 1 spots
	jzi label000000000703
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
label000000000703: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 51
	li ax, CreakMetal$0
	call ax
	sourceline 53
	push op
	li ax, 31998
	farpush ax
	li ax, 167
	farpush ax
	li ax, 179
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
	li ax, Character::get_Room
	farcall ax
	pop op
	farpush ax
	li mar, cPhone
	mr ax, mar
	callobj ax
	setfuncargs 4
	li ax, Character::ChangeRoom^4
	farcall ax
	farsubsp 4
	pop op
	sourceline 54
	li ax, 100
	mr bx, ax
	li mar, cPhone
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_Transparency
	farcall ax
	farsubsp 1
	pop op
	sourceline 57
	li mar, IsTapOn
	memread4 ax
	jzi label000000000950
	sourceline 58
	li ax, 1
	mr bx, ax
	li mar, oTapWater
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 59
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 32
	farpush ax
	li mar, oTapWater
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 60
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
	li ax, 10
	farpush ax
	li ax, 0
	farpush ax
	li mar, oTapWater
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 61
	jmpi label000000000981
label000000000950: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 64
	li ax, 0
	mr bx, ax
	li mar, oTapWater
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000000981: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 67
	li mar, IsTapHot
	memread4 ax
	jzi label000000001121
	sourceline 68
	li ax, 1
	mr bx, ax
	li mar, oFog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 69
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 33
	farpush ax
	li mar, oFog
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 70
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
	li ax, 120
	farpush ax
	li ax, 0
	farpush ax
	li mar, oFog
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 71
	jmpi label000000001152
label000000001121: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 74
	li ax, 0
	mr bx, ax
	li mar, oFog
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000001152: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 77
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000001168
	li ax, LightsOn$0
	call ax
	jmpi label000000001175
label000000001168: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 81
	li ax, LightsOff$0
	call ax
label000000001175: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 83
	li ax, 0
	ret 

room_SetLight$0: ; 0 args
	sourceline 86
	thisaddr 1181
	sourceline 87
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 89
	li mar, chanBGM
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000001257
	li mar, chanBGM
	push mar
	pop mar
	ptrget ax
	push ax
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, AudioChannel::get_Position
	farcall ax
	pop op
	ptrstack 4
	memwrite4 ax
label000000001257: ; inside room_SetLight$0, ; referenced by 1 spots
	sourceline 93
	setfuncargs 0
	li ax, GetBackgroundFrame
	farcall ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001349
	sourceline 94
	li ax, LightsOff$0
	call ax
	sourceline 95
	li mar, EndingSequenceTriggered
	memread4 ax
	not ax
	jzi label000000001345
	push op
	li ax, 1
	farpush ax
	li ax, 75
	farpush ax
	ptrstack 8
	memread4 ax
	farpush ax
	li mar, aBGM_Four_Tinny
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, AudioClip::PlayFrom^3
	farcall ax
	farsubsp 3
	pop op
	li mar, chanBGM
	push mar
	pop mar
	ptrset ax
label000000001345: ; inside room_SetLight$0, ; referenced by 1 spots
	sourceline 97
	jmpi label000000001404
label000000001349: ; inside room_SetLight$0, ; referenced by 1 spots
	sourceline 100
	li ax, LightsOn$0
	call ax
	sourceline 101
	push op
	li ax, 1
	farpush ax
	li ax, 75
	farpush ax
	ptrstack 8
	memread4 ax
	farpush ax
	li mar, aBGM_Four_Standard
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, AudioClip::PlayFrom^3
	farcall ax
	farsubsp 3
	pop op
	li mar, chanBGM
	push mar
	pop mar
	ptrset ax
label000000001404: ; inside room_SetLight$0, ; referenced by 1 spots
	sourceline 103
	li ax, 0
	subi sp, 4
	ret 

room_RepExec$0: ; 0 args
	sourceline 106
	thisaddr 1413
	sourceline 107
	li mar, PhoneRinging
	memread4 ax
	jzi label000000001450
	push ax
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, IsTimerExpired
	farcall ax
	farsubsp 1
	pop bx
	land bx, ax
	mr ax, bx
label000000001450: ; inside room_RepExec$0, ; referenced by 1 spots
	jzi label000000001543
	sourceline 108
	push op
	li ax, 0
	farpush ax
	li ax, 25
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
	sourceline 109
	push op
	li ax, "*RING RING*"
	farpush ax
	li mar, cPhone
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::SayBackground^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 110
	li ax, 160
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 2
	li ax, SetTimer
	farcall ax
	farsubsp 2
label000000001543: ; inside room_RepExec$0, ; referenced by 1 spots
	sourceline 112
	li ax, 0
	ret 

oBathtub_Look$0: ; 0 args
	sourceline 115
	thisaddr 1549
	sourceline 116
	li mar, EndingSequenceTriggered
	memread4 ax
	jzi label000000001584
	sourceline 118
	li ax, "A complete joke. An absolute waste of my time."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 119
	jmpi label000000001811
label000000001584: ; inside oBathtub_Look$0, ; referenced by 1 spots
	sourceline 122
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000001667
	sourceline 123
	push op
	li ax, 0
	farpush ax
	li ax, "Blood red and very, very goopy..."
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
	push op
	li ax, 0
	farpush ax
	li ax, "Ugh it\'s nauseating to watch."
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
	sourceline 125
	jmpi label000000001811
label000000001667: ; inside oBathtub_Look$0, ; referenced by 1 spots
	sourceline 129
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
	jnzi label000000001739
	push ax
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
	pop bx
	lor bx, ax
	mr ax, bx
label000000001739: ; inside oBathtub_Look$0, ; referenced by 1 spots
	jzi label000000001776
	push op
	li ax, 0
	farpush ax
	li ax, "Where did it go\? I can\'t see the bottom with the lights off."
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
	jmpi label000000001811
label000000001776: ; inside oBathtub_Look$0, ; referenced by 1 spots
	sourceline 133
	push op
	li ax, 0
	farpush ax
	li ax, "I think I can hear something moving around in there, but it\'s hard to see anything with the lights off."
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
label000000001811: ; inside oBathtub_Look$0, ; referenced by 3 spots
	sourceline 135
	li ax, 0
	ret 

hDoor_Interact$0: ; 0 args
	sourceline 140
	thisaddr 1817
	sourceline 141
	li mar, EndingSequenceTriggered
	memread4 ax
	not ax
	jzi label000000001853
	push op
	li mar, dDoor
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::Start^0
	farcall ax
	pop op
	jmpi label000000001871
label000000001853: ; inside hDoor_Interact$0, ; referenced by 1 spots
	sourceline 145
	li ax, "I should turn the light off before I go. The power bill is high enough already."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000001871: ; inside hDoor_Interact$0, ; referenced by 1 spots
	sourceline 146
	li ax, 0
	ret 

room_AfterFadeIn$0: ; 0 args
	sourceline 151
	thisaddr 1877
	sourceline 152
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
	li ax, Character::get_PreviousRoom
	farcall ax
	pop op
	push ax
	li ax, 8
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001946
	push op
	li mar, dCut_GotAmulet
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::StartDialog
	farcall ax
	pop op
label000000001946: ; inside room_AfterFadeIn$0, ; referenced by 1 spots
	sourceline 154
	li ax, 0
	ret 

room_FirstLoad$0: ; 0 args
	sourceline 157
	thisaddr 1952
	sourceline 158
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
	sourceline 159
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
	sourceline 160
	push op
	li mar, dCut_Intro_Start
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::Start^0
	farcall ax
	pop op
	sourceline 161
	li ax, 0
	ret 

IsSinkWaiting$0: ; 0 args
	sourceline 164
	thisaddr 2035
	sourceline 165
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
	jnzi label000000002111
	push ax
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
	pop bx
	lor bx, ax
	mr ax, bx
label000000002111: ; inside IsSinkWaiting$0, ; referenced by 1 spots
	jzi label000000002134
	li mar, SinkSpit
	memread4 ax
	not ax
	jzi label000000002128
	li ax, 1
	ret 
	jmpi label000000002134
label000000002128: ; inside IsSinkWaiting$0, ; referenced by 1 spots
	sourceline 170
	li ax, 0
	ret 
label000000002134: ; inside IsSinkWaiting$0, ; referenced by 2 spots
	sourceline 171
	li ax, 0
	ret 

hSink_Interact$0: ; 0 args
	sourceline 176
	thisaddr 2140
	sourceline 177
	li ax, 0
	farpush ax
	li ax, 4
	farpush ax
	setfuncargs 2
	li ax, moveRoom
	farcall ax
	farsubsp 2
	sourceline 178
	li ax, 0
	ret 

hMirror_Interact$0: ; 0 args
	sourceline 181
	thisaddr 2171
	sourceline 182
	li ax, 0
	farpush ax
	li ax, 5
	farpush ax
	setfuncargs 2
	li ax, moveRoom
	farcall ax
	farsubsp 2
	sourceline 183
	li ax, 0
	ret 

hCabinets_AnyClick$0: ; 0 args
	sourceline 186
	thisaddr 2202
	sourceline 187
	li ax, 0
	farpush ax
	li ax, 7
	farpush ax
	setfuncargs 2
	li ax, moveRoom
	farcall ax
	farsubsp 2
	sourceline 188
	li ax, 0
	ret 

hCabinets_Look$0: ; 0 args
	sourceline 191
	thisaddr 2233
	sourceline 192
	li ax, "Hate those things. They always stick."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 193
	li ax, 0
	ret 

oSinkAnimation_Interact$0: ; 0 args
	sourceline 196
	thisaddr 2261
	sourceline 198
	li ax, 1
	mr bx, ax
	li mar, oSwitch
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 199
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 18
	farpush ax
	li mar, oSinkAnimation
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 202
	li mar, @var000036
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002796
	sourceline 203
	push op
	li ax, 1
	farpush ax
	li ax, 23
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 204
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
	sourceline 207
	li mar, DisableJumpscares
	memread4 ax
	not ax
	jzi label000000002489
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aWaterSpout
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
label000000002489: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	sourceline 210
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
	jzi label000000002539
	push ax
	li mar, DisableJumpscares
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002539: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	jzi label000000002572
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDuckA
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
label000000002572: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	sourceline 213
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
	li mar, oSinkAnimation
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 214
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 215
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
	sourceline 216
	li ax, "What the hell\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 217
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 218
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
	sourceline 219
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
	sourceline 220
	jmpi label000000003268
label000000002796: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	sourceline 224
	push op
	li ax, 1
	farpush ax
	li ax, 26
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 225
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
	li ax, 10
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
	sourceline 228
	li mar, DisableJumpscares
	memread4 ax
	not ax
	jzi label000000002929
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aWaterSpout
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
label000000002929: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	sourceline 231
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
	jzi label000000002979
	push ax
	li mar, DisableJumpscares
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002979: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	jzi label000000003012
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aDuckA
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
label000000003012: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	sourceline 235
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
	li mar, oSinkAnimation
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 236
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 237
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 238
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
	sourceline 239
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
	sourceline 241
	li mar, @var000036
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003213
	push op
	li ax, 0
	farpush ax
	li ax, "Again\?"
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
	jmpi label000000003268
label000000003213: ; inside oSinkAnimation_Interact$0, ; referenced by 1 spots
	sourceline 244
	li mar, @var000036
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003268
	push op
	li ax, 0
	farpush ax
	li ax, "At least it\'s consistent..."
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
label000000003268: ; inside oSinkAnimation_Interact$0, ; referenced by 3 spots
	sourceline 248
	li ax, 1
	li mar, TopicSinkExplosion
	memwrite4 ax
	sourceline 249
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 250
	li mar, @var000036
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 251
	li ax, 1
	li mar, SinkSpit
	memwrite4 ax
	sourceline 253
	li ax, 0
	ret 

DuckSink$0: ; 0 args
	sourceline 256
	thisaddr 3315
	sourceline 257
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 258
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 20
	farpush ax
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 259
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
	li ax, 0
	farpush ax
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 260
	push op
	li ax, 1
	farpush ax
	li ax, 25
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 261
	li ax, "..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 262
	li ax, 0
	mr bx, ax
	li mar, oDroppedItem
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 263
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
	sourceline 264
	push op
	li ax, 31998
	farpush ax
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::AddInventory^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 267
	li ax, CreakMetal$0
	call ax
	sourceline 268
	li ax, 0
	ret 

DuckDrop$0: ; 0 args
	sourceline 271
	thisaddr 3590
	sourceline 272
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 273
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 275
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
	sourceline 276
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
	sourceline 277
	li ax, 1
	mr bx, ax
	li mar, oDroppedItem
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 278
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 21
	farpush ax
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 279
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aWaterSplash_InspectorJ
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 280
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
	sourceline 281
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
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 282
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 19
	farpush ax
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 283
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
	li ax, 30
	farpush ax
	li ax, 0
	farpush ax
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 284
	li ax, 20
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 286
	li mar, clarX
	memread4 ax
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
	sourceline 287
	li mar, clarY
	memread4 ax
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
	sourceline 288
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_y
	farcall ax
	pop op
	mr bx, ax
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Character::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 289
	push op
	li ax, 1
	farpush ax
	li ax, 24
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 292
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000004279
	sourceline 293
	li ax, 130
	farpush ax
	setfuncargs 1
	li ax, WaitMouseKey
	farcall ax
	farsubsp 1
	sourceline 294
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 295
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
	sourceline 296
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 297
	li ax, "...This would be cuter if it wasn\'t floating in blood."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 298
	jmpi label000000004293
label000000004279: ; inside DuckDrop$0, ; referenced by 1 spots
	sourceline 300
	li mar, @var000040
	memread4 ax
	jzi label000000004293
	li ax, DuckSink$0
	call ax
label000000004293: ; inside DuckDrop$0, ; referenced by 2 spots
	sourceline 303
	li ax, 0
	setfuncargs 0
	li ax, Game::get_InSkippableCutscene
	farcall ax
	jzi label000000004314
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
label000000004314: ; inside DuckDrop$0, ; referenced by 1 spots
	sourceline 306
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
	li ax, Character::LoseInventory^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 307
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 309
	li ax, 0
	ret 

BroomNeutral$0: ; 0 args
	sourceline 311
	thisaddr 4363
	sourceline 312
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 313
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 314
	push op
	li ax, 1
	farpush ax
	li ax, 28
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 316
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
	sourceline 317
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 318
	li ax, 2
	mr bx, ax
	li mar, oBathtub
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 319
	li ax, 1
	mr bx, ax
	li mar, oLaundry
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 320
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
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 322
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000004885
	sourceline 324
	li ax, "...Huh."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 325
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
	sourceline 326
	li ax, 0
	mr bx, ax
	li mar, oBathtub
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 327
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
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 328
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 329
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 330
	push op
	li ax, 0
	farpush ax
	li ax, "There\'s something squishy in the drain."
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
	sourceline 331
	push op
	li ax, 0
	farpush ax
	li ax, "%a An organic buildup, perhaps\?"
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
	sourceline 332
	jmpi label000000005227
label000000004885: ; inside BroomNeutral$0, ; referenced by 1 spots
	sourceline 336
	li ax, "...\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 337
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
	sourceline 338
	li ax, 0
	mr bx, ax
	li mar, oBathtub
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 339
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
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 340
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 341
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
	sourceline 342
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
	sourceline 343
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 344
	push op
	li ax, 0
	farpush ax
	li ax, "That can\'t be right... I can\'t feel the bottom of the tub."
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
	sourceline 345
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
	sourceline 346
	push op
	li ax, 0
	farpush ax
	li ax, "%a And it\'s certainly not that deep."
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
label000000005227: ; inside BroomNeutral$0, ; referenced by 1 spots
	sourceline 348
	li ax, 0
	ret 

BroomSinister$0: ; 0 args
	sourceline 350
	thisaddr 5233
	sourceline 351
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 352
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 353
	push op
	li ax, 1
	farpush ax
	li ax, 28
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 354
	li ax, -2
	mr bx, ax
	li mar, oBathtub
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 355
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
	sourceline 356
	li ax, 10
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 357
	li ax, 2
	mr bx, ax
	li mar, oBathtub
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 358
	li ax, 1
	mr bx, ax
	li mar, oLaundry
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 359
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
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 361
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000005797
	sourceline 363
	li ax, "...Huh."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 364
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
	sourceline 365
	li ax, 0
	mr bx, ax
	li mar, oBathtub
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Baseline
	farcall ax
	farsubsp 1
	pop op
	sourceline 366
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
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 367
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 368
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
	sourceline 369
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 370
	push op
	li ax, 0
	farpush ax
	li ax, "The blockage seems to be gone, but nothing is draining."
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
	sourceline 371
	li ax, "What am I missing\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 372
	jmpi label000000006158
label000000005797: ; inside BroomSinister$0, ; referenced by 1 spots
	sourceline 376
	li ax, "...\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 377
	li ax, 30
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 378
	push op
	li ax, 1
	farpush ax
	li ax, 29
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 379
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
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 380
	li ax, 50
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 381
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 382
	li ax, "\?\?\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 383
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 384
	push op
	li ax, 1
	farpush ax
	li ax, 25
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 385
	li ax, "WHERE THE HELL DID IT GO."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 386
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::UnlockView^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 387
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
	sourceline 388
	push op
	li mar, iBroom
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
	sourceline 389
	push op
	li ax, 31998
	farpush ax
	li mar, iBroom
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::AddInventory^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 390
	li ax, CreakMetal$0
	call ax
label000000006158: ; inside BroomSinister$0, ; referenced by 1 spots
	sourceline 392
	li ax, 0
	ret 

hSwitch_Interact$0: ; 0 args
	sourceline 395
	thisaddr 6164
	sourceline 396
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 397
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
	sourceline 398
	li ax, 0
	mr bx, ax
	li mar, oSwitch
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 399
	push op
	li ax, 1
	farpush ax
	li ax, 15
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 401
	li ax, 20
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 402
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
	sourceline 404
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
	sourceline 405
	li mar, chanAmbientC
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000006429
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
label000000006429: ; inside hSwitch_Interact$0, ; referenced by 1 spots
	sourceline 407
	li ax, room_SetLight$0
	call ax
	sourceline 409
	li ax, IsSinkWaiting$0
	call ax
	jzi label000000006452
	li ax, oSinkAnimation_Interact$0
	call ax
	jmpi label000000006599
label000000006452: ; inside hSwitch_Interact$0, ; referenced by 1 spots
	sourceline 415
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
	sourceline 416
	li ax, 20
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 417
	li ax, 1
	mr bx, ax
	li mar, oSwitch
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 419
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 420
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
label000000006599: ; inside hSwitch_Interact$0, ; referenced by 1 spots
	sourceline 423
	li mar, BathroomLightOn
	memread4 ax
	not ax
	jzi label000000006639
	push ax
	li mar, oDroppedItem
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Visible
	farcall ax
	pop op
	pop bx
	land bx, ax
	mr ax, bx
label000000006639: ; inside hSwitch_Interact$0, ; referenced by 1 spots
	jzi label000000006656
	push ax
	li mar, @var000040
	memread4 ax
	pop bx
	land bx, ax
	mr ax, bx
label000000006656: ; inside hSwitch_Interact$0, ; referenced by 1 spots
	jzi label000000006663
	li ax, DuckSink$0
	call ax
label000000006663: ; inside hSwitch_Interact$0, ; referenced by 1 spots
	sourceline 427
	li mar, EndingSequenceTriggered
	memread4 ax
	jzi label000000006691
	push op
	li mar, dCut_Necklace_Ghost
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::Start^0
	farcall ax
	pop op
label000000006691: ; inside hSwitch_Interact$0, ; referenced by 1 spots
	sourceline 429
	li ax, 0
	ret 

on_key_press$1: ; 1 args
	sourceline 431
	thisaddr 6697
	sourceline 442
	li ax, 0
	ret 

oBathtub_UseInv$0: ; 0 args
	sourceline 445
	thisaddr 6707
	sourceline 446
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li mar, iDuck
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006765
	li ax, DuckDrop$0
	call ax
label000000006765: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 449
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li mar, iBroom
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006862
	sourceline 451
	li mar, @var000040
	memread4 ax
	jzi label000000006830
	li ax, BroomSinister$0
	call ax
	jmpi label000000006837
label000000006830: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 455
	li ax, BroomNeutral$0
	call ax
label000000006837: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 458
	li ax, 6
	mr bx, ax
	li mar, mouse
	mr ax, mar
	farpush bx
	setfuncargs 1
	li ax, Mouse::set_Mode
	farcall ax
	farsubsp 1
label000000006862: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 460
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li mar, iCandles
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007100
	sourceline 462
	li ax, 30
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
	sourceline 463
	li ax, 1
	mr bx, ax
	li mar, oCandles
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 464
	li ax, 30
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
	sourceline 465
	push op
	li mar, iCandles
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
	sourceline 466
	li ax, 1
	mr bx, ax
	li mar, oCandles
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Clickable
	farcall ax
	farsubsp 1
	pop op
	sourceline 467
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
label000000007100: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 471
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li mar, iDrainCleaner
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007909
	sourceline 473
	li mar, @var000040
	memread4 ax
	jzi label000000007182
	sourceline 475
	li ax, "I\'d rather not risk poisoning myself."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 476
	li ax, 0
	ret 
label000000007182: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 479
	li ax, 4
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 480
	setfuncargs 0
	li ax, PrepareClarissa
	farcall ax
	sourceline 481
	push op
	li ax, 1
	farpush ax
	li ax, 27
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 482
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
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Character::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 485
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aWaterSplash_InspectorJ
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
	sourceline 487
	li mar, oDroppedItem
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Visible
	farcall ax
	pop op
	not ax
	jzi label000000007523
	sourceline 488
	li ax, 1
	mr bx, ax
	li mar, oDroppedItem
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 489
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 30
	farpush ax
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 490
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
	li mar, oDroppedItem
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 491
	li ax, 0
	mr bx, ax
	li mar, oDroppedItem
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000007523: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 493
	li ax, 60
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 494
	push op
	li ax, 0
	farpush ax
	li ax, 50
	farpush ax
	li mar, aSteam
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 495
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
	sourceline 496
	li ax, 40
	farpush ax
	setfuncargs 1
	li ax, Wait
	farcall ax
	farsubsp 1
	sourceline 497
	setfuncargs 0
	li ax, ResetClarissa
	farcall ax
	sourceline 498
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
	sourceline 499
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
	sourceline 500
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 501
	push op
	li ax, 0
	farpush ax
	li ax, "That\'s everything in the bottle. I hope I didn\'t just make chlorine gas."
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
	sourceline 502
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
	sourceline 503
	li ax, "At least that will loosen up whatever\'s in the drain."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 504
	push op
	li mar, iDrainCleaner
	mr ax, mar
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::LoseInventory^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 505
	li ax, 1
	li mar, @var000040
	memwrite4 ax
	sourceline 506
	li ax, 1
	li mar, DrainClear
	memwrite4 ax
	sourceline 508
	li mar, BathroomLightOn
	memread4 ax
	not ax
	jzi label000000007902
	push ax
	li mar, oDroppedItem
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Visible
	farcall ax
	pop op
	pop bx
	land bx, ax
	mr ax, bx
label000000007902: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	jzi label000000007909
	li ax, DuckSink$0
	call ax
label000000007909: ; inside oBathtub_UseInv$0, ; referenced by 2 spots
	sourceline 512
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li mar, iNecklace
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007977
	push op
	li mar, dCut_Necklace
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::StartDialog
	farcall ax
	pop op
label000000007977: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 515
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li mar, iMatches
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008042
	li ax, "The fact these came out of the drain completely dry is one miracle I\'m not going to ruin just yet."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000008042: ; inside oBathtub_UseInv$0, ; referenced by 1 spots
	sourceline 517
	li ax, 0
	ret 

on_mouse_click$1: ; 1 args
	sourceline 519
	thisaddr 8048
	sourceline 520
	li mar, mouse
	memread4 ax
	push ax
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_x
	farcall ax
	pop op
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000008121
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
label000000008121: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 523
	li mar, mouse
	memread4 ax
	push ax
	li mar, cClarissa
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Character::get_x
	farcall ax
	pop op
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000008190
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
label000000008190: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 526
	li mar, mouse
	addi mar, 4
	memread4 ax
	push ax
	li ax, 185
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000008246
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
label000000008246: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 528
	li ax, 0
	ret 

oBathtub_Interact$0: ; 0 args
	sourceline 532
	thisaddr 8252
	sourceline 534
	li mar, EndingSequenceTriggered
	memread4 ax
	jzi label000000008443
	sourceline 535
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
	sourceline 536
	push op
	li ax, 0
	farpush ax
	li ax, "Stupid, stupid, stupid."
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
	sourceline 537
	push op
	li ax, 0
	farpush ax
	li ax, "%a I\'ll bet that ugly thing was made of plastic."
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
	sourceline 538
	push op
	li ax, 0
	farpush ax
	li ax, "And the water is probably rancid shampoo and food dye."
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
	sourceline 539
	push op
	li ax, 0
	farpush ax
	li ax, "This is what I get for hiring a bunch of nerds."
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
	sourceline 540
	li ax, 0
	ret 
	sourceline 541
	jmpi label000000008930
label000000008443: ; inside oBathtub_Interact$0, ; referenced by 1 spots
	sourceline 543
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
	jzi label000000008493
	push ax
	li mar, SinkSpit
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000008493: ; inside oBathtub_Interact$0, ; referenced by 1 spots
	jzi label000000008603
	sourceline 544
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
	sourceline 545
	push op
	li ax, 0
	farpush ax
	li ax, "Duckie\?"
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
	sourceline 546
	push op
	li ax, 0
	farpush ax
	li ax, "%a Are you down there, buddy\?"
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
	sourceline 547
	li ax, 0
	ret 
	sourceline 548
	jmpi label000000008930
label000000008603: ; inside oBathtub_Interact$0, ; referenced by 1 spots
	sourceline 550
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
	jzi label000000008653
	push ax
	li mar, SinkSpit
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000008653: ; inside oBathtub_Interact$0, ; referenced by 1 spots
	jzi label000000008722
	sourceline 551
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
	sourceline 552
	push op
	li ax, 0
	farpush ax
	li ax, "Th... the broom dropped straight down, and the tub isn\'t that deep..."
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
	sourceline 553
	jmpi label000000008930
label000000008722: ; inside oBathtub_Interact$0, ; referenced by 1 spots
	sourceline 555
	li mar, @var000040
	memread4 ax
	jzi label000000008833
	sourceline 556
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
	sourceline 557
	push op
	li ax, 0
	farpush ax
	li ax, "Whoof... those chemicals didn\'t help the colour or smell."
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
	sourceline 558
	push op
	li ax, 0
	farpush ax
	li ax, "%a All the more reason to not put my hand in there."
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
	sourceline 559
	jmpi label000000008930
label000000008833: ; inside oBathtub_Interact$0, ; referenced by 1 spots
	sourceline 563
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
	sourceline 564
	li ax, "There\'s got to be a smarter way to clear the drain than putting my hand in that."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 565
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
	sourceline 566
	li ax, "Who knows what kind of diseases I\'d get."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000008930: ; inside oBathtub_Interact$0, ; referenced by 4 spots
	sourceline 568
	li ax, 0
	ret 

oBroom_Interact$0: ; 0 args
	sourceline 575
	thisaddr 8936
	sourceline 576
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
	sourceline 577
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
	sourceline 578
	li ax, 0
	mr bx, ax
	li mar, oBroom
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 579
	push op
	li ax, 0
	farpush ax
	li ax, "Yoink."
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
	sourceline 580
	push op
	li ax, 31998
	farpush ax
	li mar, iBroom
	mr ax, mar
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::AddInventory^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 581
	li ax, 0
	ret 

oCandles_Look$0: ; 0 args
	sourceline 584
	thisaddr 9109
	sourceline 585
	li mar, oCandles
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 253
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009184
	push op
	li ax, 0
	farpush ax
	li ax, "Now, where did the matches get to...\?"
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
	jmpi label000000009219
label000000009184: ; inside oCandles_Look$0, ; referenced by 1 spots
	sourceline 589
	push op
	li ax, 0
	farpush ax
	li ax, "Ughhhh, citronella. I\'m beginning to remember why I banished those to the cupboard."
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
label000000009219: ; inside oCandles_Look$0, ; referenced by 1 spots
	sourceline 590
	li ax, 0
	ret 

oDroppedItem_Look$0: ; 0 args
	sourceline 594
	thisaddr 9225
	sourceline 595
	push op
	li ax, 1
	farpush ax
	li ax, 24
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Character::LockView^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 596
	push op
	li ax, "fsdf"
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
	sourceline 597
	push op
	li ax, 1
	farpush ax
	li mar, cClarissa
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::UnlockView^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 598
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
	sourceline 599
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
	sourceline 600
	push op
	li ax, 0
	farpush ax
	li ax, "Ahem."
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
	sourceline 601
	li ax, 0
	ret 

oCandles_Interact$0: ; 0 args
	sourceline 604
	thisaddr 9435
	sourceline 605
	li mar, oCandles
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 253
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009493
	li ax, "Now, where did the matches get to...\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000009511
label000000009493: ; inside oCandles_Interact$0, ; referenced by 1 spots
	sourceline 609
	li ax, "I\'ll leave them for now. I like the ambience they give off."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000009511: ; inside oCandles_Interact$0, ; referenced by 1 spots
	sourceline 610
	li ax, 0
	ret 

oCandles_UseInv$0: ; 0 args
	sourceline 613
	thisaddr 9517
	sourceline 615
	li mar, oCandles
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Object::get_Graphic
	farcall ax
	pop op
	push ax
	li ax, 253
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010002
	sourceline 616
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li mar, iMatches
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000009980
	sourceline 618
	li ax, 4
	farpush ax
	setfuncargs 1
	li ax, StartCutscene
	farcall ax
	farsubsp 1
	sourceline 619
	li ax, 30
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
	sourceline 620
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aMatchLight
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 621
	push op
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	li ax, 31
	farpush ax
	li mar, oCandles
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, Object::SetView^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 622
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
	li ax, 30
	farpush ax
	li ax, 0
	farpush ax
	li mar, oCandles
	mr ax, mar
	callobj ax
	setfuncargs 7
	li ax, Object::Animate^7
	farcall ax
	farsubsp 7
	pop op
	sourceline 623
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
	sourceline 624
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
	sourceline 625
	li ax, 30
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
	sourceline 626
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
	sourceline 627
	push op
	li mar, iMatches
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
	sourceline 628
	li ax, "...There."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 629
	setfuncargs 0
	li ax, EndCutscene
	farcall ax
	sourceline 630
	li ax, 1
	li mar, LitCandles
	memwrite4 ax
	sourceline 631
	jmpi label000000009998
label000000009980: ; inside oCandles_UseInv$0, ; referenced by 1 spots
	sourceline 634
	li ax, "Maybe if I\'d paid attention in Girl Scouts, I\'d know how to start a fire with that."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000009998: ; inside oCandles_UseInv$0, ; referenced by 1 spots
	sourceline 635
	jmpi label000000010020
label000000010002: ; inside oCandles_UseInv$0, ; referenced by 1 spots
	sourceline 639
	li ax, "Burning my house down via random experimentation isn\'t on my to-do list."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000010020: ; inside oCandles_UseInv$0, ; referenced by 1 spots
	sourceline 640
	li ax, 0
	ret 

CleanItem$1: ; 1 args
	sourceline 643
	thisaddr 10026
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 644
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li mar, iDuck
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010132
	sourceline 645
	push op
	li ax, "I\'ve wiped off all the blood, but something still seems... wrong. What did I do to you\?"
	farpush ax
	li ax, "textLook"
	farpush ax
	li mar, iDuck
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, InventoryItem::SetTextProperty^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 646
	li ax, 361
	mr bx, ax
	li mar, iDuck
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, InventoryItem::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 647
	jmpi label000000010224
label000000010132: ; inside CleanItem$1, ; referenced by 1 spots
	sourceline 649
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li mar, iBroom
	mr ax, mar
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010224
	sourceline 650
	push op
	li ax, "The only proof of what it\'s been through is the stained bristles. How on Earth did it fit past the u-bend\?"
	farpush ax
	li ax, "textLook"
	farpush ax
	li mar, iBroom
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, InventoryItem::SetTextProperty^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 651
	li ax, 363
	mr bx, ax
	li mar, iBroom
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, InventoryItem::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000010224: ; inside CleanItem$1, ; referenced by 2 spots
	sourceline 654
	push op
	li ax, 0
	farpush ax
	li ax, "IsBloodied"
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, InventoryItem::SetProperty^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 655
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
	sourceline 656
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
	sourceline 657
	push op
	li ax, 0
	farpush ax
	li ax, "There. Clean again - or as clean as I can get it."
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
	sourceline 659
	li mar, @var000048
	memread4 ax
	push ax
	li ax, 19
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010493
	sourceline 661
	li ax, 364
	li mar, @var000048
	memwrite4 ax
	sourceline 663
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000010425
	li ax, 364
	mr bx, ax
	li mar, oTowel
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000010425: ; inside CleanItem$1, ; referenced by 1 spots
	sourceline 665
	push op
	li ax, 0
	farpush ax
	li ax, "...Annnnnd I\'ve ruined this towel."
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
	sourceline 666
	push op
	li ax, "Dammit. Time to rethink that adjective."
	farpush ax
	li ax, "textLook"
	farpush ax
	li mar, oTowel
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, Object::SetTextProperty^2
	farcall ax
	farsubsp 2
	pop op
label000000010493: ; inside CleanItem$1, ; referenced by 1 spots
	sourceline 669
	li ax, 0
	li mar, player
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
	li ax, Character::set_ActiveInventory
	farcall ax
	farsubsp 1
	pop op
	sourceline 670
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

oTowel_UseInv$0: ; 0 args
	sourceline 673
	thisaddr 10550
	sourceline 674
	push op
	li ax, "IsBloodied"
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	callobj ax
	setfuncargs 1
	li ax, InventoryItem::GetProperty^1
	farcall ax
	farsubsp 1
	pop op
	jzi label000000010648
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
	li ax, Character::get_ActiveInventory
	farcall ax
	pop op
	push ax
	li ax, CleanItem$1
	call ax
	subi sp, 4
	jmpi label000000010666
label000000010648: ; inside oTowel_UseInv$0, ; referenced by 1 spots
	sourceline 678
	li ax, "There\'s no need to wipe that down."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000010666: ; inside oTowel_UseInv$0, ; referenced by 1 spots
	sourceline 679
	li ax, 0
	ret 

oLaundry_Interact$0: ; 0 args
	sourceline 682
	thisaddr 10672
	sourceline 683
	li mar, MirrorComplete
	memread4 ax
	jzi label000000010845
	sourceline 684
	push op
	li ax, 0
	farpush ax
	li ax, "If there\'s nothing in the pockets, then..."
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
	sourceline 685
	li ax, 0
	mr bx, ax
	li mar, oLaundry
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 686
	push op
	li ax, 0
	farpush ax
	li ax, 75
	farpush ax
	li mar, aClothMove
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, AudioClip::Play^2
	farcall ax
	farsubsp 2
	pop op
	sourceline 687
	li ax, "...!"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 688
	li ax, "There\'s something down the back of the cabinet."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 689
	li ax, 0
	farpush ax
	li ax, 8
	farpush ax
	setfuncargs 2
	li ax, moveRoom
	farcall ax
	farsubsp 2
	sourceline 690
	jmpi label000000010863
label000000010845: ; inside oLaundry_Interact$0, ; referenced by 1 spots
	sourceline 693
	li ax, "Right. No more excuses, I need to clean this up. ...Once I\'m done fixing the shower."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000010863: ; inside oLaundry_Interact$0, ; referenced by 1 spots
	sourceline 694
	li ax, 0
	ret 

on_call$1: ; 1 args
	sourceline 696
	thisaddr 10869
	sourceline 697
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000010899
	li ax, LightsOff$0
	call ax
label000000010899: ; inside on_call$1, ; referenced by 1 spots
	sourceline 699
	li ax, 0
	ret 

oDroppedItem_Interact$0: ; 0 args
	sourceline 701
	thisaddr 10905
	sourceline 702
	push op
	li mar, dCoolRanch
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::StartDialog
	farcall ax
	pop op
	sourceline 703
	li ax, 0
	ret 

hSink_Look$0: ; 0 args
	sourceline 706
	thisaddr 10936
	sourceline 707
	li mar, IsTapOn
	memread4 ax
	jzi label000000010967
	li ax, "My water bill is going to skyrocket if I don\'t fix that."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000011036
label000000010967: ; inside hSink_Look$0, ; referenced by 1 spots
	sourceline 711
	li ax, "I wonder if my plumbing issues are at all related to me washing dishes in here...\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 712
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
	sourceline 713
	li ax, "Surely not, but... maybe I should order that replacement knob for the kitchen just in case."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000011036: ; inside hSink_Look$0, ; referenced by 1 spots
	sourceline 715
	li ax, 0
	ret 

room_Leave$0: ; 0 args
	sourceline 719
	thisaddr 11042
	sourceline 720
	li ax, 0
	li mar, player
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
	li ax, Character::set_ActiveInventory
	farcall ax
	farsubsp 1
	pop op
	sourceline 721
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
"__NEWSCRIPTSTART_room2.asc"
"*RING RING*"
"A complete joke. An absolute waste of my time."
"Blood red and very, very goopy..."
"Ugh it\'s nauseating to watch."
"Where did it go\? I can\'t see the bottom with the lights off."
"I think I can hear something moving around in there, but it\'s hard to see anything with the lights off."
"I should turn the light off before I go. The power bill is high enough already."
"Hate those things. They always stick."
"What the hell\?"
"Again\?"
"At least it\'s consistent..."
"..."
"...This would be cuter if it wasn\'t floating in blood."
"...Huh."
"There\'s something squishy in the drain."
"%a An organic buildup, perhaps\?"
"...\?"
"That can\'t be right... I can\'t feel the bottom of the tub."
"%a And it\'s certainly not that deep."
"...Huh."
"The blockage seems to be gone, but nothing is draining."
"What am I missing\?"
"...\?"
"\?\?\?"
"WHERE THE HELL DID IT GO."
"I\'d rather not risk poisoning myself."
"That\'s everything in the bottle. I hope I didn\'t just make chlorine gas."
"At least that will loosen up whatever\'s in the drain."
"The fact these came out of the drain completely dry is one miracle I\'m not going to ruin just yet."
"Stupid, stupid, stupid."
"%a I\'ll bet that ugly thing was made of plastic."
"And the water is probably rancid shampoo and food dye."
"This is what I get for hiring a bunch of nerds."
"Duckie\?"
"%a Are you down there, buddy\?"
"Th... the broom dropped straight down, and the tub isn\'t that deep..."
"Whoof... those chemicals didn\'t help the colour or smell."
"%a All the more reason to not put my hand in there."
"There\'s got to be a smarter way to clear the drain than putting my hand in that."
"Who knows what kind of diseases I\'d get."
"Yoink."
"Now, where did the matches get to...\?"
"Ughhhh, citronella. I\'m beginning to remember why I banished those to the cupboard."
"fsdf"
"Ahem."
"Now, where did the matches get to...\?"
"I\'ll leave them for now. I like the ambience they give off."
"...There."
"Maybe if I\'d paid attention in Girl Scouts, I\'d know how to start a fire with that."
"Burning my house down via random experimentation isn\'t on my to-do list."
"textLook"
"I\'ve wiped off all the blood, but something still seems... wrong. What did I do to you\?"
"textLook"
"The only proof of what it\'s been through is the stained bristles. How on Earth did it fit past the u-bend\?"
"IsBloodied"
"There. Clean again - or as clean as I can get it."
"...Annnnnd I\'ve ruined this towel."
"textLook"
"Dammit. Time to rethink that adjective."
"IsBloodied"
"There\'s no need to wipe that down."
"If there\'s nothing in the pockets, then..."
"...!"
"There\'s something down the back of the cabinet."
"Right. No more excuses, I need to clean this up. ...Once I\'m done fixing the shower."
"My water bill is going to skyrocket if I don\'t fix that."
"I wonder if my plumbing issues are at all related to me washing dishes in here...\?"
"Surely not, but... maybe I should order that replacement knob for the kitchen just in case."
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
000000000135""
000000000136""
000000000137""
000000000138""
000000000139""
000000000140""
000000000141""
000000000142""
000000000143""
000000000144"Mouse::get_Mode"
000000000145"Mouse::set_Mode"
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
000000000189"InventoryItem::GetProperty^1"
000000000190""
000000000191""
000000000192""
000000000193""
000000000194""
000000000195"InventoryItem::get_Graphic"
000000000196"InventoryItem::set_Graphic"
000000000197""
000000000198""
000000000199""
000000000200"InventoryItem::SetProperty^2"
000000000201"InventoryItem::SetTextProperty^2"
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
000000000255"SetBackgroundFrame"
000000000256"GetBackgroundFrame"
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
000000000284""
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
000000000329""
000000000330""
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
000000000556"AudioChannel::Stop^0"
000000000557""
000000000558""
000000000559""
000000000560""
000000000561""
000000000562"AudioChannel::get_PlayingClip"
000000000563"AudioChannel::get_Position"
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
000000000574"AudioClip::PlayFrom^3"
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
000000000627"Object::get_Clickable"
000000000628"Object::set_Clickable"
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
000000000644""
000000000645""
000000000646""
000000000647""
000000000648""
000000000649""
000000000650""
000000000651"Object::SetTextProperty^2"
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
000000000665"Character::AddInventory^2"
000000000666""
000000000667"Character::Animate^7"
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
000000000690""
000000000691"Character::SayAt^4"
000000000692"Character::SayBackground^1"
000000000693""
000000000694""
000000000695""
000000000696""
000000000697""
000000000698""
000000000699"Character::UnlockView^1"
000000000700""
000000000701""
000000000702"Character::get_ActiveInventory"
000000000703"Character::set_ActiveInventory"
000000000704""
000000000705""
000000000706""
000000000707"Character::get_Baseline"
000000000708"Character::set_Baseline"
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
000000000744"Character::get_PreviousRoom"
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
000000000935"cSink"
000000000936"cClarissa"
000000000937"cMrBones"
000000000938""
000000000939"cPhone"
000000000940""
000000000941"aBGM_Four_Standard"
000000000942"aBGM_Four_Tinny"
000000000943""
000000000944""
000000000945"aAmbienceGhostWind"
000000000946"aAmbienceCreakyPipes"
000000000947""
000000000948""
000000000949""
000000000950""
000000000951""
000000000952"aDuckA"
000000000953""
000000000954""
000000000955""
000000000956"aWaterSpout"
000000000957""
000000000958""
000000000959"aWaterSplash_InspectorJ"
000000000960"aSteam"
000000000961""
000000000962""
000000000963""
000000000964"aPhoneRingMuffled"
000000000965""
000000000966""
000000000967""
000000000968""
000000000969""
000000000970"aClothMove"
000000000971""
000000000972""
000000000973""
000000000974""
000000000975""
000000000976""
000000000977"aLightswitch"
000000000978""
000000000979"aMatchLight"
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
000000000997"iDuck"
000000000998"iBroom"
000000000999"iCandles"
000000001000"iDrainCleaner"
000000001001"iMatches"
000000001002"iNecklace"
000000001003""
000000001004""
000000001005"dCut_Intro_Start"
000000001006""
000000001007""
000000001008""
000000001009""
000000001010"dDoor"
000000001011""
000000001012""
000000001013"dCut_GotAmulet"
000000001014"dCut_Necklace"
000000001015""
000000001016""
000000001017"dCoolRanch"
000000001018"dCut_Necklace_Ghost"
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
000000001120"oBathtub"
000000001121"oTowel"
000000001122"oLaundry"
000000001123""
000000001124""
000000001125"oSwitch"
000000001126"oSinkAnimation"
000000001127"oDroppedItem"
000000001128"oBroom"
000000001129"oCandles"
000000001130"oTapWater"
000000001131"oFog"
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
000000001205"chanSFX"
000000001206"chanBGM"
000000001207"BathroomLightOn"
000000001208"clarX"
000000001209"clarY"
000000001210"PhoneRinging"
000000001211"SinkSpit"
000000001212"TopicSinkExplosion"
000000001213"IsTapHot"
000000001214"IsTapOn"
000000001215""
000000001216""
000000001217"LitCandles"
000000001218"chanAmbientB"
000000001219"chanAmbientC"
000000001220""
000000001221"EndingSequenceTriggered"
000000001222""
000000001223""
000000001224""
000000001225""
000000001226""
000000001227"MirrorComplete"
000000001228""
000000001229"DrainClear"
000000001230"DisableJumpscares"
000000001231"PlayingInBrowser"
000000001232""
000000001233"Character::SetMood"
000000001234"PrepareClarissa"
000000001235"ResetClarissa"
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
000000001577""
000000001578""
000000001579""
000000001580""
000000001581""
000000001582""
000000001583""
000000001584""
000000001585""
000000001586""
000000001587""
000000001588""
000000001589""
000000001590""
000000001591""
000000001592""
000000001593""
000000001594""
000000001595""
000000001596""
000000001597""
000000001598""
000000001599""
000000001600"playAnimation"
000000001601"moveRoom"
000000001602""
000000001603""
000000001604""
000000001605""
000000001606""
000000001607""
000000001608""
000000001609""
000000001610""
000000001611""
000000001612""
000000001613""
000000001614""
000000001615""
000000001616"Character::Speak"
000000001617""
000000001618""
000000001619"Narrate"
000000001620""
000000001621""
000000001622""
000000001623""
000000001624"Dialog::StartDialog"
000000001625""
000000001626""
000000001627""
000000001628""
000000001629""
000000001630""
000000001631""
000000001632""
000000001633""
000000001634""
000000001635""
000000001636""
000000001637""
000000001638""
000000001639""
.exports
000000000000"targetContainer"
2:000000000004
000000000001"LightsOn$0"
1:000000000000
000000000002"LightsOff$0"
1:000000000217
000000000003"CreakMetal$0"
1:000000000412
000000000004"room_Load$0"
1:000000000607
000000000005"room_SetLight$0"
1:000000001181
000000000006"room_RepExec$0"
1:000000001413
000000000007"oBathtub_Look$0"
1:000000001549
000000000008"hDoor_Interact$0"
1:000000001817
000000000009"room_AfterFadeIn$0"
1:000000001877
000000000010"room_FirstLoad$0"
1:000000001952
000000000011"IsSinkWaiting$0"
1:000000002035
000000000012"hSink_Interact$0"
1:000000002140
000000000013"hMirror_Interact$0"
1:000000002171
000000000014"hCabinets_AnyClick$0"
1:000000002202
000000000015"hCabinets_Look$0"
1:000000002233
000000000016"oSinkAnimation_Interact$0"
1:000000002261
000000000017"DuckSink$0"
1:000000003315
000000000018"DuckDrop$0"
1:000000003590
000000000019"BroomNeutral$0"
1:000000004363
000000000020"BroomSinister$0"
1:000000005233
000000000021"hSwitch_Interact$0"
1:000000006164
000000000022"on_key_press$1"
1:000000006697
000000000023"oBathtub_UseInv$0"
1:000000006707
000000000024"on_mouse_click$1"
1:000000008048
000000000025"oBathtub_Interact$0"
1:000000008252
000000000026"oBroom_Interact$0"
1:000000008936
000000000027"oCandles_Look$0"
1:000000009109
000000000028"oDroppedItem_Look$0"
1:000000009225
000000000029"oCandles_Interact$0"
1:000000009435
000000000030"oCandles_UseInv$0"
1:000000009517
000000000031"CleanItem$1"
1:000000010026
000000000032"oTowel_UseInv$0"
1:000000010550
000000000033"oLaundry_Interact$0"
1:000000010672
000000000034"on_call$1"
1:000000010869
000000000035"oDroppedItem_Interact$0"
1:000000010905
000000000036"hSink_Look$0"
1:000000010936
000000000037"room_Leave$0"
1:000000011042
.sections
"room2.asc" = 0

