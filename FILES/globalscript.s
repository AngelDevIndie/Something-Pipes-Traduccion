.data
int var000000 = 0 ; unreferenced variable, assuming char
export char targetContainer = 0
char[31] var000005 = 0 ; unreferenced variable, assuming char
.text

game_start$0: ; 0 args
	sourceline 6
	thisaddr 0
	sourceline 7
	li ax, 0
	li mar, DisableJumpscares
	memwrite4 ax
	sourceline 9
	li ax, 1
	mr bx, ax
	li ax, 0
	farpush bx
	setfuncargs 1
	li ax, System::set_VSync
	farcall ax
	farsubsp 1
	sourceline 11
	setfuncargs 0
	li ax, loadSettings
	farcall ax
	sourceline 12
	li ax, 1
	li mar, JustLoaded
	memwrite4 ax
	sourceline 15
	li ax, 0
	setfuncargs 0
	li ax, System::get_OperatingSystem
	farcall ax
	push ax
	li ax, 8
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000000185
	sourceline 17
	li ax, 0
	li mar, PlayingInBrowser
	memwrite4 ax
	sourceline 18
	li ax, 0
	mr bx, ax
	li mar, btnInvHov
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUIControl::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 19
	li ax, 0
	mr bx, ax
	li mar, btnPauseHov
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUIControl::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 20
	li ax, 0
	mr bx, ax
	li mar, btnInvClose
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUIControl::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000000185: ; inside game_start$0, ; referenced by 1 spots
	sourceline 23
	li ax, 0
	ret 

room_AfterFadeIn$0: ; 0 args
	sourceline 27
	thisaddr 191
	sourceline 28
	setfuncargs 0
	li ax, clearTrans
	farcall ax
	sourceline 29
	li ax, 0
	ret 

updateMouseGraphic$0: ; 0 args
	sourceline 32
	thisaddr 210
	sourceline 34
	li mar, mouse
	mr ax, mar
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000000280
	push ax
	li mar, mouse
	mr ax, mar
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 7
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000280: ; inside updateMouseGraphic$0, ; referenced by 1 spots
	jzi label000000000286
	li ax, 0
	ret 
label000000000286: ; inside updateMouseGraphic$0, ; referenced by 1 spots
	sourceline 38
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, GetLocationType
	farcall ax
	farsubsp 2
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000000357
	li ax, 4
	farpush ax
	li ax, 0
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	farpush ax
	setfuncargs 2
	li ax, Mouse::ChangeModeGraphic^2
	farcall ax
	farsubsp 2
	jmpi label000000000385
label000000000357: ; inside updateMouseGraphic$0, ; referenced by 1 spots
	sourceline 42
	li ax, 5
	farpush ax
	li ax, 0
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	farpush ax
	setfuncargs 2
	li ax, Mouse::ChangeModeGraphic^2
	farcall ax
	farsubsp 2
label000000000385: ; inside updateMouseGraphic$0, ; referenced by 1 spots
	sourceline 44
	li ax, 0
	ret 

unhandled_event$2: ; 2 args
	sourceline 51
	thisaddr 391
	sourceline 53
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000000687
	sourceline 55
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, LocateHotspot
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 57
	ptrstack 16
	memread4 ax
	mr bx, ax
	jmpi label000000000635
label000000000463: ; inside unhandled_event$2, ; referenced by 3 spots
	jmpi label000000000679
label000000000465: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 59
	push op
	li ax, "textLook"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Hotspot::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 60
	li ax, 0
	jmpi label000000000463
label000000000513: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 63
	push op
	li ax, "textUse"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Hotspot::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 64
	li ax, 0
	jmpi label000000000463
label000000000561: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 67
	push op
	li ax, "textInvFail"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Hotspot::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 68
	li ax, 0
	jmpi label000000000463
label000000000609: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 71
	ptrstack 16
	memread4 ax
	farpush ax
	li ax, "Something\'s fucked up. Tell CJ Hotspot, %d."
	farpush ax
	setfuncargs 2
	li ax, Display
	farcall ax
	farsubsp 2
	sourceline 72
	jmpi label000000000679
label000000000635: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 58
	push bx
	li ax, 1
	pop bx
	cmpne ax, bx
	jzi label000000000465
	sourceline 62
	push bx
	li ax, 2
	pop bx
	cmpne ax, bx
	jzi label000000000513
	sourceline 66
	push bx
	li ax, 3
	pop bx
	cmpne ax, bx
	jzi label000000000561
	jmpi label000000000609
label000000000679: ; inside unhandled_event$2, ; referenced by 2 spots
	sourceline 73
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000000687: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 76
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001019
	sourceline 78
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Object::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 80
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000000779
	li ax, 0
	ptrstack 4
	ptrzerond 
	subi sp, 4
	ret 
label000000000779: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 83
	ptrstack 16
	memread4 ax
	mr bx, ax
	jmpi label000000000965
label000000000790: ; inside unhandled_event$2, ; referenced by 3 spots
	jmpi label000000001011
label000000000792: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 85
	push op
	li ax, "textLook"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Object::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 86
	li ax, 0
	jmpi label000000000790
label000000000840: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 89
	push op
	li ax, "textUse"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Object::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 90
	li ax, 0
	jmpi label000000000790
label000000000888: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 93
	push op
	li ax, "textInvFail"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Object::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 94
	li ax, 0
	jmpi label000000000790
label000000000936: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 97
	ptrstack 16
	memread4 ax
	farpush ax
	li ax, "Something\'s fucked up. Tell CJ Object, %d."
	farpush ax
	setfuncargs 2
	li ax, Display
	farcall ax
	farsubsp 2
	sourceline 98
	li ax, 0
	jmpi label000000001011
label000000000965: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 99
	sourceline 84
	push bx
	li ax, 0
	pop bx
	cmpne ax, bx
	jzi label000000000792
	sourceline 88
	push bx
	li ax, 1
	pop bx
	cmpne ax, bx
	jzi label000000000840
	sourceline 92
	push bx
	li ax, 3
	pop bx
	cmpne ax, bx
	jzi label000000000888
	jmpi label000000000936
label000000001011: ; inside unhandled_event$2, ; referenced by 2 spots
	sourceline 101
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000001019: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 104
	ptrstack 8
	memread4 ax
	push ax
	li ax, 3
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001198
	sourceline 106
	ptrstack 12
	memread4 ax
	mr bx, ax
	jmpi label000000001154
label000000001051: ; inside unhandled_event$2, ; referenced by 3 spots
	jmpi label000000001198
label000000001053: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 108
	li ax, "They\'re just standing around."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 109
	li ax, 0
	jmpi label000000001051
label000000001078: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 112
	li ax, "They\'re not in a talking mood."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 113
	li ax, 0
	jmpi label000000001051
label000000001103: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 116
	li ax, "They don\'t want it."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 117
	li ax, 0
	jmpi label000000001051
label000000001128: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 120
	ptrstack 12
	memread4 ax
	farpush ax
	li ax, "Something\'s fucked up. Tell CJ Character, %d."
	farpush ax
	setfuncargs 2
	li ax, Display
	farcall ax
	farsubsp 2
	sourceline 121
	jmpi label000000001198
label000000001154: ; inside unhandled_event$2, ; referenced by 1 spots
	sourceline 107
	push bx
	li ax, 0
	pop bx
	cmpne ax, bx
	jzi label000000001053
	sourceline 111
	push bx
	li ax, 1
	pop bx
	cmpne ax, bx
	jzi label000000001078
	sourceline 115
	push bx
	li ax, 3
	pop bx
	cmpne ax, bx
	jzi label000000001103
	jmpi label000000001128
label000000001198: ; inside unhandled_event$2, ; referenced by 3 spots
	sourceline 123
	li ax, 0
	ret 

updateHover$0: ; 0 args
	sourceline 126
	thisaddr 1204
	sourceline 128
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Game::GetLocationName^2
	farcall ax
	farsubsp 2
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
	sourceline 131
	li mar, gInventory
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	jnzi label000000001314
	push ax
	li mar, gInventoryContainer
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	pop bx
	lor bx, ax
	mr ax, bx
label000000001314: ; inside updateHover$0, ; referenced by 1 spots
	jzi label000000001600
	sourceline 133
	li ax, "@OVERHOTSPOT"
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
	sourceline 134
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, InventoryItem::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 135
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001480
	sourceline 137
	li ax, ""
	newstr ax
	mr bx, ax
	li mar, lblInvDescription
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 138
	li ax, ""
	newstr ax
	mr bx, ax
	li mar, lblInvContDescrip
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 140
	jmpi label000000001592
label000000001480: ; inside updateHover$0, ; referenced by 1 spots
	sourceline 143
	push op
	li ax, "textLook"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, InventoryItem::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	mr bx, ax
	li mar, lblInvContDescrip
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 144
	push op
	li ax, "textLook"
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, InventoryItem::GetTextProperty^1
	farcall ax
	farsubsp 1
	pop op
	mr bx, ax
	li mar, lblInvDescription
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Label::set_Text
	farcall ax
	farsubsp 1
	pop op
label000000001592: ; inside updateHover$0, ; referenced by 1 spots
	sourceline 146
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000001600: ; inside updateHover$0, ; referenced by 1 spots
	sourceline 147
	li ax, 0
	ret 

repeatedly_execute$0: ; 0 args
	sourceline 151
	thisaddr 1606
	sourceline 152
	li mar, JustLoaded
	memread4 ax
	jzi label000000001722
	sourceline 154
	li ax, 1
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
	sourceline 155
	li ax, 40
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
	sourceline 156
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
	sourceline 157
	li ax, 0
	li mar, JustLoaded
	memwrite4 ax
label000000001722: ; inside repeatedly_execute$0, ; referenced by 1 spots
	sourceline 162
	li mar, leavingRoom
	memread4 ax
	jzi label000000001750
	sourceline 163
	setfuncargs 0
	li ax, clearTrans
	farcall ax
	sourceline 164
	li ax, 0
	li mar, leavingRoom
	memwrite4 ax
label000000001750: ; inside repeatedly_execute$0, ; referenced by 1 spots
	sourceline 168
	li ax, updateHover$0
	call ax
	sourceline 169
	li ax, updateMouseGraphic$0
	call ax
	sourceline 171
	li ax, 0
	ret 

repeatedly_execute_always$0: ; 0 args
	sourceline 175
	thisaddr 1770
	sourceline 177
	li mar, gDialog
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	jzi label000000001828
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
label000000001828: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	sourceline 180
	li ax, 83
	farpush ax
	setfuncargs 1
	li ax, IsKeyPressed
	farcall ax
	farsubsp 1
	jzi label000000001856
	li ax, 1
	li mar, fastForward
	memwrite4 ax
	jmpi label000000001866
label000000001856: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	sourceline 184
	li ax, 0
	li mar, fastForward
	memwrite4 ax
label000000001866: ; inside repeatedly_execute_always$0, ; referenced by 1 spots
	sourceline 185
	li ax, 0
	ret 

on_key_press$1: ; 1 args
	sourceline 189
	thisaddr 1872
	sourceline 190
	setfuncargs 0
	li ax, IsGamePaused
	farcall ax
	jzi label000000001900
	sourceline 193
	li ax, 0
	ptrstack 8
	memwrite4 ax
	sourceline 194
	jmpi label000000002485
label000000001900: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 195
	ptrstack 8
	memread4 ax
	push ax
	li ax, 27
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002001
	sourceline 197
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	not ax
	jzi label000000001977
	push ax
	li mar, gMenuTabsHTML
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001977: ; inside on_key_press$1, ; referenced by 1 spots
	jzi label000000001988
	setfuncargs 0
	li ax, showPause
	farcall ax
	jmpi label000000001997
label000000001988: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 201
	setfuncargs 0
	li ax, hidePause
	farcall ax
label000000001997: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 202
	jmpi label000000002485
label000000002001: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 204
	ptrstack 8
	memread4 ax
	push ax
	li ax, 17
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002042
	sourceline 207
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, QuitGame
	farcall ax
	farsubsp 1
	sourceline 208
	jmpi label000000002485
label000000002042: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 209
	ptrstack 8
	memread4 ax
	push ax
	li ax, 367
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002076
	sourceline 212
	setfuncargs 0
	li ax, RestartGame
	farcall ax
	sourceline 213
	jmpi label000000002485
label000000002076: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 214
	ptrstack 8
	memread4 ax
	push ax
	li ax, 434
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002117
	sourceline 217
	li ax, "screenshot.pcx"
	farpush ax
	setfuncargs 1
	li ax, SaveScreenShot
	farcall ax
	farsubsp 1
	sourceline 218
	jmpi label000000002485
label000000002117: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 219
	ptrstack 8
	memread4 ax
	push ax
	li ax, 19
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002163
	sourceline 222
	li ax, 0
	farpush ax
	li ax, 0
	farpush ax
	setfuncargs 2
	li ax, Debug
	farcall ax
	farsubsp 2
	sourceline 223
	jmpi label000000002485
label000000002163: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 224
	ptrstack 8
	memread4 ax
	push ax
	li ax, 22
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002209
	sourceline 227
	li ax, 0
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 2
	li ax, Debug
	farcall ax
	farsubsp 2
	sourceline 228
	jmpi label000000002485
label000000002209: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 229
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002255
	sourceline 232
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	setfuncargs 2
	li ax, Debug
	farcall ax
	farsubsp 2
	sourceline 233
	jmpi label000000002485
label000000002255: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 234
	ptrstack 8
	memread4 ax
	push ax
	li ax, 24
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002301
	sourceline 237
	li ax, 0
	farpush ax
	li ax, 3
	farpush ax
	setfuncargs 2
	li ax, Debug
	farcall ax
	farsubsp 2
	sourceline 238
	jmpi label000000002485
label000000002301: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 240
	ptrstack 8
	memread4 ax
	push ax
	li ax, 73
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000002349
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 69
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000002349: ; inside on_key_press$1, ; referenced by 1 spots
	jzi label000000002485
	sourceline 242
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	jnzi label000000002403
	push ax
	li mar, gMenuTabsHTML
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	pop bx
	lor bx, ax
	mr ax, bx
label000000002403: ; inside on_key_press$1, ; referenced by 1 spots
	jzi label000000002409
	li ax, 0
	ret 
label000000002409: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 245
	li mar, gInventory
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	not ax
	jzi label000000002465
	push ax
	li mar, gInventoryContainer
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000002465: ; inside on_key_press$1, ; referenced by 1 spots
	jzi label000000002476
	setfuncargs 0
	li ax, showInventory
	farcall ax
	jmpi label000000002485
label000000002476: ; inside on_key_press$1, ; referenced by 1 spots
	sourceline 249
	setfuncargs 0
	li ax, hideInventory
	farcall ax
label000000002485: ; inside on_key_press$1, ; referenced by 11 spots
	sourceline 251
	li ax, 0
	ret 

panorama_click$1: ; 1 args
	sourceline 255
	thisaddr 2491
	sourceline 256
	setfuncargs 0
	li ax, IsGamePaused
	farcall ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002523
	sourceline 257
	jmpi label000000003364
label000000002523: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 259
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003011
	sourceline 262
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Character::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000002687
	sourceline 264
	li mar, mouse
	mr ax, mar
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002650
	li ax, 4
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
	jmpi label000000002683
label000000002650: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 268
	li ax, 2
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
label000000002683: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 269
	jmpi label000000003007
label000000002687: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 272
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Object::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000002830
	sourceline 274
	li mar, mouse
	mr ax, mar
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002793
	li ax, 4
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
	jmpi label000000002826
label000000002793: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 278
	li ax, 2
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
label000000002826: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 279
	jmpi label000000003007
label000000002830: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 282
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Hotspot::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000003007
	sourceline 283
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Hotspot::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 285
	li mar, mouse
	mr ax, mar
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002969
	push op
	li ax, 4
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Hotspot::RunInteraction^1
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000002999
label000000002969: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 289
	push op
	li ax, 2
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Hotspot::RunInteraction^1
	farcall ax
	farsubsp 1
	pop op
label000000002999: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 290
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000003007: ; inside panorama_click$1, ; referenced by 3 spots
	sourceline 291
	jmpi label000000003364
label000000003011: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 293
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003364
	sourceline 296
	li mar, mouse
	mr ax, mar
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003087
	li ax, 2
	mr bx, ax
	li mar, mouse
	mr ax, mar
	farpush bx
	setfuncargs 1
	li ax, Mouse::set_Mode
	farcall ax
	farsubsp 1
	jmpi label000000003364
label000000003087: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 299
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Character::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000003167
	sourceline 301
	li ax, 1
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
	sourceline 302
	jmpi label000000003364
label000000003167: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 304
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Object::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000003247
	sourceline 306
	li ax, 1
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
	sourceline 307
	jmpi label000000003364
label000000003247: ; inside panorama_click$1, ; referenced by 1 spots
	sourceline 309
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Hotspot::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000003364
	sourceline 310
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, Hotspot::GetAtScreenXY^2
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 311
	push op
	li ax, 1
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Hotspot::RunInteraction^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 312
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000003364: ; inside panorama_click$1, ; referenced by 7 spots
	sourceline 314
	li ax, 0
	ret 

on_mouse_click$1: ; 1 args
	sourceline 320
	thisaddr 3370
	sourceline 321
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
	sourceline 323
	li mar, gInventory
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	jnzi label000000003459
	push ax
	li mar, gInventoryContainer
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, GUI::get_Visible
	farcall ax
	pop op
	pop bx
	lor bx, ax
	mr ax, bx
label000000003459: ; inside on_mouse_click$1, ; referenced by 1 spots
	jzi label000000003470
	setfuncargs 0
	li ax, manhandleInventory
	farcall ax
	jmpi label000000003691
label000000003470: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 331
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003588
	sourceline 333
	li ax, 0
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 4
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003551
	li ax, 4
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
	jmpi label000000003584
label000000003551: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 337
	li ax, 2
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
label000000003584: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 338
	jmpi label000000003691
label000000003588: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 341
	ptrstack 8
	memread4 ax
	push ax
	li ax, 2
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003691
	sourceline 343
	li ax, 0
	setfuncargs 0
	li ax, Mouse::get_Mode
	farcall ax
	push ax
	li ax, 4
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000003669
	li ax, 1
	farpush ax
	li mar, mouse
	addi mar, 4
	memread4 ax
	farpush ax
	li mar, mouse
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, Room::ProcessClick^3
	farcall ax
	farsubsp 3
	jmpi label000000003691
label000000003669: ; inside on_mouse_click$1, ; referenced by 1 spots
	sourceline 347
	li ax, 6
	mr bx, ax
	li ax, 0
	farpush bx
	setfuncargs 1
	li ax, Mouse::set_Mode
	farcall ax
	farsubsp 1
label000000003691: ; inside on_mouse_click$1, ; referenced by 4 spots
	sourceline 351
	li ax, 0
	ret 

on_event$2: ; 2 args
	sourceline 354
	thisaddr 3697
	sourceline 355
	ptrstack 8
	memread4 ax
	mr bx, ax
	jmpi label000000003756
label000000003712: ; inside on_event$2, ; referenced by 1 spots
	jmpi label000000003786
label000000003714: ; inside on_event$2, ; referenced by 1 spots
	sourceline 357
	setfuncargs 0
	li ax, loadSettings
	farcall ax
	sourceline 358
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 359
	li ax, 0
	jmpi label000000003712
label000000003739: ; inside on_event$2, ; referenced by 1 spots
	sourceline 362
	li ax, 1
	li mar, leavingRoom
	memwrite4 ax
	sourceline 363
	li ax, 0
	jmpi label000000003786
label000000003756: ; inside on_event$2, ; referenced by 1 spots
	sourceline 364
	sourceline 356
	push bx
	li ax, 9
	pop bx
	cmpne ax, bx
	jzi label000000003714
	sourceline 361
	push bx
	li ax, 1
	pop bx
	cmpne ax, bx
	jzi label000000003739
label000000003786: ; inside on_event$2, ; referenced by 2 spots
	sourceline 365
	li ax, 0
	ret 

dialog_request$1: ; 1 args
	sourceline 370
	thisaddr 3792
	sourceline 371
	li ax, 0
	ret 

btnExitGame_OnClick$2: ; 2 args
	sourceline 378
	thisaddr 3802
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 380
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnPlay_OnClick$2: ; 2 args
	sourceline 383
	thisaddr 3821
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 385
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnQuit_OnClick$2: ; 2 args
	sourceline 388
	thisaddr 3840
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 389
	li ax, 0
	farpush ax
	setfuncargs 1
	li ax, QuitGame
	farcall ax
	farsubsp 1
	sourceline 390
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

iCup_Interact$0: ; 0 args
	sourceline 393
	thisaddr 3875
	sourceline 394
	push op
	li ax, "I don\'t think drinking this would be wise."
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, Character::Say^101
	farcall ax
	farsubsp 1
	pop op
	sourceline 395
	li ax, 0
	ret 

gInventory_OnClick$2: ; 2 args
	sourceline 400
	thisaddr 3916
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 401
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

slMaster_OnChange$1: ; 1 args
	sourceline 406
	thisaddr 3935
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 407
	li mar, slMaster
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	mr bx, ax
	li ax, 0
	farpush bx
	setfuncargs 1
	li ax, System::set_Volume
	farcall ax
	farsubsp 1
	sourceline 408
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 409
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
	sourceline 410
	push op
	li mar, slMaster
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "master"
	newstr ax
	farpush ax
	li ax, "audio"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 411
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
	sourceline 412
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

slBGM_OnChange$1: ; 1 args
	sourceline 415
	thisaddr 5119
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 416
	li ax, 1680
	farpush ax
	li mar, slBGM
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, 2
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 417
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 418
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
	sourceline 419
	push op
	li mar, slBGM
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "bgm"
	newstr ax
	farpush ax
	li ax, "audio"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 420
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
	sourceline 421
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

slAMB_OnChange$1: ; 1 args
	sourceline 424
	thisaddr 6307
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 425
	li ax, 1680
	farpush ax
	li mar, slAMB
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 426
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 427
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
	sourceline 428
	push op
	li mar, slAMB
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "ambient"
	newstr ax
	farpush ax
	li ax, "audio"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 429
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
	sourceline 430
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

slSFX_OnChange$1: ; 1 args
	sourceline 433
	thisaddr 7495
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 434
	li ax, 1680
	farpush ax
	li mar, slSFX
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, 3
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 435
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 436
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
	sourceline 437
	push op
	li mar, slSFX
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "sfx"
	newstr ax
	farpush ax
	li ax, "audio"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 438
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
	sourceline 439
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

btnShowAudio_OnClick$2: ; 2 args
	sourceline 442
	thisaddr 8683
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 443
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 445
	li mar, PlayingInBrowser
	memread4 ax
	not ax
	jzi label000000008744
	li ax, 1
	mr bx, ax
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000008775
label000000008744: ; inside btnShowAudio_OnClick$2, ; referenced by 1 spots
	sourceline 449
	li ax, 1
	mr bx, ax
	li mar, gMenuTabsHTML
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000008775: ; inside btnShowAudio_OnClick$2, ; referenced by 1 spots
	sourceline 451
	li ax, 1
	mr bx, ax
	li mar, gMenuSound
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 452
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnShowVis_OnClick$2: ; 2 args
	sourceline 455
	thisaddr 8815
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 456
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 458
	li mar, PlayingInBrowser
	memread4 ax
	not ax
	jzi label000000008876
	li ax, 1
	mr bx, ax
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	jmpi label000000008907
label000000008876: ; inside btnShowVis_OnClick$2, ; referenced by 1 spots
	sourceline 462
	li ax, 1
	mr bx, ax
	li mar, gMenuTabsHTML
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
label000000008907: ; inside btnShowVis_OnClick$2, ; referenced by 1 spots
	sourceline 464
	li ax, 1
	mr bx, ax
	li mar, gMenuVis
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 465
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnShowGame_OnClick$2: ; 2 args
	sourceline 468
	thisaddr 8947
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 469
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 470
	li ax, 1
	mr bx, ax
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 471
	li ax, 1
	mr bx, ax
	li mar, gMenuGame
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 472
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

slTintRed_OnChange$1: ; 1 args
	sourceline 475
	thisaddr 9037
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 476
	li mar, slTintBlue
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li mar, slTintGreen
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li mar, slTintRed
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	setfuncargs 3
	li ax, TintScreen
	farcall ax
	farsubsp 3
	sourceline 478
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 479
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
	sourceline 480
	push op
	li mar, slTintRed
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "tintRed"
	newstr ax
	farpush ax
	li ax, "visual"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 481
	push op
	li mar, slTintGreen
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "tintGreen"
	newstr ax
	farpush ax
	li ax, "visual"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 482
	push op
	li mar, slTintBlue
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "tintBlue"
	newstr ax
	farpush ax
	li ax, "visual"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 483
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
	sourceline 484
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

btnOpenQuit_OnClick$2: ; 2 args
	sourceline 487
	thisaddr 10371
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 488
	li ax, 1
	mr bx, ax
	li mar, gMenuQuit
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 489
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnRestore_OnClick$2: ; 2 args
	sourceline 492
	thisaddr 10421
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 493
	setfuncargs 0
	li ax, RestoreGameDialog
	farcall ax
	sourceline 494
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

Button1_OnClick$2: ; 2 args
	sourceline 497
	thisaddr 10449
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 498
	li mar, PlayingInBrowser
	memread4 ax
	jzi label000000010484
	li ax, "Save/Load is unavailable in the web build - sorry about that!"
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
	jmpi label000000010557
label000000010484: ; inside Button1_OnClick$2, ; referenced by 1 spots
	sourceline 503
	li ax, 1
	mr bx, ax
	li mar, gSaveGame
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 504
	push op
	li mar, lstSaveList
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, ListBox::Clear^0
	farcall ax
	pop op
	sourceline 505
	push op
	li mar, lstSaveList
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, ListBox::FillSaveGameList^0
	farcall ax
	pop op
label000000010557: ; inside Button1_OnClick$2, ; referenced by 1 spots
	sourceline 507
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnPause_OnClick$2: ; 2 args
	sourceline 510
	thisaddr 10566
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 511
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 512
	li ax, 1
	mr bx, ax
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 513
	li ax, 1
	mr bx, ax
	li mar, gMenuPause
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 514
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnClose_OnClick$2: ; 2 args
	sourceline 517
	thisaddr 10656
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 518
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 519
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

gMenuPause_OnClick$2: ; 2 args
	sourceline 522
	thisaddr 10684
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 524
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

slTurnSpeed_OnChange$1: ; 1 args
	sourceline 527
	thisaddr 10703
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 529
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnPanAuto_OnClick$2: ; 2 args
	sourceline 533
	thisaddr 10722
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 534
	li ax, 0
	li mar, panModeDrag
	memwrite4 ax
	sourceline 535
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 536
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
	sourceline 537
	push op
	li ax, 0
	farpush ax
	li ax, "panModeDrag"
	newstr ax
	farpush ax
	li ax, "gameplay"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteBool^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 538
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
	sourceline 539
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

btnPanDrag_OnClick$2: ; 2 args
	sourceline 542
	thisaddr 11862
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 543
	li ax, 1
	li mar, panModeDrag
	memwrite4 ax
	sourceline 544
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 545
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
	sourceline 546
	push op
	li ax, 1
	farpush ax
	li ax, "panModeDrag"
	newstr ax
	farpush ax
	li ax, "gameplay"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteBool^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 547
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
	sourceline 548
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

btnCloseContainer_OnClick$2: ; 2 args
	sourceline 551
	thisaddr 13002
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 552
	setfuncargs 0
	li ax, hideInventory
	farcall ax
	sourceline 553
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnStateInitial_OnClick$2: ; 2 args
	sourceline 556
	thisaddr 13030
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 558
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnBuildingBlackout_OnClick$2: ; 2 args
	sourceline 561
	thisaddr 13049
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 563
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnDestroyFloor_OnClick$2: ; 2 args
	sourceline 566
	thisaddr 13068
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 568
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnDingy_OnClick$2: ; 2 args
	sourceline 571
	thisaddr 13087
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 573
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnPanKeybrd_OnClick$2: ; 2 args
	sourceline 576
	thisaddr 13106
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 577
	li mar, panQuickturnEnabled
	memread4 ax
	jzi label000000013135
	li ax, 0
	li mar, panQuickturnEnabled
	memwrite4 ax
	jmpi label000000013145
label000000013135: ; inside btnPanKeybrd_OnClick$2, ; referenced by 1 spots
	sourceline 581
	li ax, 1
	li mar, panQuickturnEnabled
	memwrite4 ax
label000000013145: ; inside btnPanKeybrd_OnClick$2, ; referenced by 1 spots
	sourceline 583
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 584
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
	sourceline 585
	push op
	li mar, panQuickturnEnabled
	memread4 ax
	farpush ax
	li ax, "panQuickturnEnabled"
	newstr ax
	farpush ax
	li ax, "gameplay"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteBool^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 586
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
	sourceline 587
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

cClarissa_Interact$0: ; 0 args
	sourceline 590
	thisaddr 14267
	sourceline 591
	li ax, 2
	farpush ax
	setfuncargs 1
	li ax, Random
	farcall ax
	farsubsp 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 593
	ptrstack 4
	memread4 ax
	mr bx, ax
	jmpi label000000014469
label000000014306: ; inside cClarissa_Interact$0, ; referenced by 2 spots
	jmpi label000000014513
label000000014308: ; inside cClarissa_Interact$0, ; referenced by 1 spots
	sourceline 595
	push op
	li ax, 0
	farpush ax
	li ax, "What am I going to do with myself\?"
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
	sourceline 596
	li ax, 0
	jmpi label000000014306
label000000014350: ; inside cClarissa_Interact$0, ; referenced by 1 spots
	sourceline 599
	push op
	li ax, 0
	farpush ax
	li ax, "Pull yourself together, Dunst."
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
	sourceline 600
	li ax, 0
	jmpi label000000014306
label000000014392: ; inside cClarissa_Interact$0, ; referenced by 1 spots
	sourceline 603
	push op
	li ax, 0
	farpush ax
	li ax, "Is it too late to go back to bed\?"
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
	sourceline 604
	push op
	li ax, 0
	farpush ax
	li ax, "...No, no, gotta fix this."
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
	sourceline 605
	li ax, 0
	jmpi label000000014513
label000000014469: ; inside cClarissa_Interact$0, ; referenced by 1 spots
	sourceline 607
	sourceline 594
	push bx
	li ax, 0
	pop bx
	cmpne ax, bx
	jzi label000000014308
	sourceline 598
	push bx
	li ax, 1
	pop bx
	cmpne ax, bx
	jzi label000000014350
	sourceline 602
	push bx
	li ax, 2
	pop bx
	cmpne ax, bx
	jzi label000000014392
label000000014513: ; inside cClarissa_Interact$0, ; referenced by 2 spots
	sourceline 608
	li ax, 0
	subi sp, 4
	ret 

lstSuggestions_OnSelectionChanged$1: ; 1 args
	sourceline 611
	thisaddr 14522
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 613
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

txtSearch_OnActivate$1: ; 1 args
	sourceline 616
	thisaddr 14541
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 618
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnBack_OnClick$2: ; 2 args
	sourceline 621
	thisaddr 14560
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 622
	li ax, 0
	mr bx, ax
	li mar, gWebpage
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 623
	li ax, ""
	newstr ax
	mr bx, ax
	li mar, txtSearch
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, TextBox::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 624
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

slBloops_OnChange$1: ; 1 args
	sourceline 627
	thisaddr 14643
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 628
	li ax, 1680
	farpush ax
	li mar, slBloops
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, 4
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 629
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 630
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
	sourceline 631
	push op
	li mar, slBloops
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, Slider::get_Value
	farcall ax
	pop op
	farpush ax
	li ax, "bloop"
	newstr ax
	farpush ax
	li ax, "audio"
	newstr ax
	farpush ax
	ptrstack 1008
	mr ax, mar
	callobj ax
	setfuncargs 3
	li ax, IniFile::WriteInt^3
	farcall ax
	farsubsp 3
	pop op
	sourceline 632
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
	sourceline 633
	li ax, 0
	ptrstack 1012
	ptrzerond 
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

cClarissa_Look$0: ; 0 args
	sourceline 636
	thisaddr 15831
	sourceline 637
	li ax, "Ugh... my hair feels so oily. I bet it\'s sticking up right now."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 638
	li ax, 0
	ret 

cClarissa_UseInv$0: ; 0 args
	sourceline 641
	thisaddr 15859
	sourceline 642
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
	mr bx, ax
	jmpi label000000016199
label000000015899: ; inside cClarissa_UseInv$0, ; referenced by 6 spots
	jmpi label000000016320
label000000015901: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 644
	push op
	li mar, dCoolRanch
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, Dialog::StartDialog
	farcall ax
	pop op
	sourceline 645
	li ax, 0
	jmpi label000000015899
label000000015929: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 648
	li ax, "...Maybe later."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 649
	li ax, 0
	jmpi label000000015899
label000000015954: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 652
	li ax, "Sweeping things under the rug is what I do best."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 653
	li ax, 0
	jmpi label000000015899
label000000015979: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 656
	li ax, "Let\'s not go that far."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 657
	li ax, 0
	jmpi label000000015899
label000000016004: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 660
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
	sourceline 661
	li ax, "They do look kind of tasty-"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 662
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
	sourceline 663
	li ax, "No, no. No more eating wax. You\'re not six years old."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 664
	li ax, 0
	jmpi label000000015899
label000000016113: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 667
	li ax, "I\'ll put these on when I have a specific task in mind."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 668
	li ax, "...In other words, I should use these on something else."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 669
	li ax, 0
	jmpi label000000015899
label000000016156: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 672
	li ax, "Just holding this thing is giving me a bad feeling."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 673
	li ax, "I\'d rather not put it on..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 674
	li ax, 0
	jmpi label000000016320
label000000016199: ; inside cClarissa_UseInv$0, ; referenced by 1 spots
	sourceline 675
	sourceline 643
	push bx
	li mar, iDuck
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000015901
	sourceline 647
	push bx
	li mar, iDrainCleaner
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000015929
	sourceline 651
	push bx
	li mar, iBroom
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000015954
	sourceline 655
	push bx
	li mar, iMatches
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000015979
	sourceline 659
	push bx
	li mar, iCandles
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000016004
	sourceline 666
	push bx
	li mar, iGloves
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000016113
	sourceline 671
	push bx
	li mar, iNecklace
	mr ax, mar
	pop bx
	cmpne ax, bx
	jzi label000000016156
label000000016320: ; inside cClarissa_UseInv$0, ; referenced by 2 spots
	sourceline 676
	li ax, 0
	ret 

Button2_OnClick$2: ; 2 args
	sourceline 679
	thisaddr 16326
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 680
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	farpush ax
	setfuncargs 1
	li ax, RestoreGameSlot
	farcall ax
	farsubsp 1
	sourceline 681
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnSave_OnClick$2: ; 2 args
	sourceline 684
	thisaddr 16377
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 685
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
	li ax, 301
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000016458
	sourceline 686
	li ax, "There\'s no need to save here. The title screen can\'t hurt you."
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
	sourceline 687
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 
label000000016458: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 690
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_ItemCount
	farcall ax
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 691
	li mar, txtSaveNames
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_Text
	farcall ax
	pop op
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 694
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, ""
	pop bx
	streq bx, ax
	mr ax, bx
	jzi label000000016572
	sourceline 696
	li ax, "Please enter a name for your saved game."
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
	sourceline 697
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000016572: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 700
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	push ax
	li ax, -1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000016663
	sourceline 702
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 703
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, SaveGameSlot
	farcall ax
	farsubsp 2
	sourceline 704
	jmpi label000000016932
label000000016663: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 707
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000016676: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 708
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000016835
	sourceline 710
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 8
	memread4 ax
	mr dx, ax
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, ListBox::geti_Items
	farcall ax
	farsubsp 1
	pop op
	pop bx
	streq bx, ax
	mr ax, bx
	jzi label000000016820
	sourceline 713
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 714
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 4
	memread4 ax
	assertlte ax, 50
	muli ax, 2
	mr cx, ax
	li mar, savegameindex
	add mar, cx
	memread2 ax
	farpush ax
	setfuncargs 2
	li ax, SaveGameSlot
	farcall ax
	farsubsp 2
	sourceline 715
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 8
	ptrzerond 
	subi sp, 12
	ret 
label000000016820: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 717
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 718
	jmpi label000000016676
label000000016835: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 720
	ptrstack 12
	memread4 ax
	push ax
	li ax, 20
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000016911
	sourceline 722
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 723
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	setfuncargs 2
	li ax, SaveGameSlot
	farcall ax
	farsubsp 2
	sourceline 724
	jmpi label000000016927
label000000016911: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 726
	li ax, "You\'ve somehow hit the maximum save count of 20. Please delete a couple."
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
label000000016927: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 727
	subi sp, 4
label000000016932: ; inside btnSave_OnClick$2, ; referenced by 1 spots
	sourceline 728
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 

btnDelSave_OnClick$2: ; 2 args
	sourceline 731
	thisaddr 16947
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 732
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	push ax
	li ax, -1
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000017067
	sourceline 734
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	assertlte ax, 50
	muli ax, 2
	mr cx, ax
	li mar, savegameindex
	add mar, cx
	memread2 ax
	farpush ax
	setfuncargs 1
	li ax, DeleteSaveSlot
	farcall ax
	farsubsp 1
	sourceline 735
	push op
	li mar, lstSaveList
	mr ax, mar
	callobj ax
	setfuncargs 0
	li ax, ListBox::FillSaveGameList^0
	farcall ax
	pop op
	sourceline 736
	jmpi label000000017083
label000000017067: ; inside btnDelSave_OnClick$2, ; referenced by 1 spots
	sourceline 738
	li ax, "Please select a saved game to delete."
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
label000000017083: ; inside btnDelSave_OnClick$2, ; referenced by 1 spots
	sourceline 740
	li ax, ""
	newstr ax
	mr bx, ax
	li mar, txtSaveNames
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, TextBox::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 741
	li ax, -1
	mr bx, ax
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, ListBox::set_SelectedIndex
	farcall ax
	farsubsp 1
	pop op
	sourceline 742
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

lstSaveList_OnSelectionChanged$1: ; 1 args
	sourceline 745
	thisaddr 17156
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 746
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	mr dx, ax
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	farpush dx
	setfuncargs 1
	li ax, ListBox::geti_Items
	farcall ax
	farsubsp 1
	pop op
	mr bx, ax
	li mar, txtSaveNames
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, TextBox::set_Text
	farcall ax
	farsubsp 1
	pop op
	sourceline 747
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnLoad_OnClick$2: ; 2 args
	sourceline 750
	thisaddr 17248
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 751
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_ItemCount
	farcall ax
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 752
	li mar, txtSaveNames
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, TextBox::get_Text
	farcall ax
	pop op
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 755
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, ""
	pop bx
	streq bx, ax
	mr ax, bx
	jzi label000000017372
	sourceline 757
	li ax, "Please select a saved game to be loaded."
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
	sourceline 758
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000017372: ; inside btnLoad_OnClick$2, ; referenced by 1 spots
	sourceline 760
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	push ax
	li ax, -1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000017428
	sourceline 762
	li ax, "Please select a saved game to be loaded"
	farpush ax
	setfuncargs 1
	li ax, Display
	farcall ax
	farsubsp 1
	sourceline 763
	jmpi label000000017575
label000000017428: ; inside btnLoad_OnClick$2, ; referenced by 1 spots
	sourceline 764
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000017575
	sourceline 766
	li ax, 1000
	mr bx, ax
	li mar, gSplash
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_ZOrder
	farcall ax
	farsubsp 1
	pop op
	sourceline 767
	li ax, 40
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
	sourceline 768
	li mar, lstSaveList
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, ListBox::get_SelectedIndex
	farcall ax
	pop op
	assertlte ax, 50
	muli ax, 2
	mr cx, ax
	li mar, savegameindex
	add mar, cx
	memread2 ax
	farpush ax
	setfuncargs 1
	li ax, RestoreGameSlot
	farcall ax
	farsubsp 1
label000000017575: ; inside btnLoad_OnClick$2, ; referenced by 2 spots
	sourceline 770
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 

btnWaitNo_OnClick$2: ; 2 args
	sourceline 773
	thisaddr 17590
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 774
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 775
	li ax, 1
	mr bx, ax
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 776
	li ax, 0
	mr bx, ax
	li mar, gMenuQuit
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 777
	li ax, 1
	mr bx, ax
	li mar, gMenuPause
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 778
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnReallyQuit_OnClick$2: ; 2 args
	sourceline 781
	thisaddr 17711
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 782
	li ax, 0
	farpush ax
	setfuncargs 1
	li ax, QuitGame
	farcall ax
	farsubsp 1
	sourceline 783
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnSmallQuit_OnClick$2: ; 2 args
	sourceline 786
	thisaddr 17746
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 787
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 788
	li ax, 1
	mr bx, ax
	li mar, gMenuTabs
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 789
	li ax, 1
	mr bx, ax
	li mar, gMenuQuit
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, GUI::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 790
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnPauseHov_OnClick$2: ; 2 args
	sourceline 793
	thisaddr 17836
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 794
	setfuncargs 0
	li ax, showPause
	farcall ax
	sourceline 795
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnInvHov_OnClick$2: ; 2 args
	sourceline 798
	thisaddr 17864
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 799
	setfuncargs 0
	li ax, showInventory
	farcall ax
	sourceline 800
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnInvClose_OnClick$2: ; 2 args
	sourceline 803
	thisaddr 17892
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 804
	setfuncargs 0
	li ax, hideInventory
	farcall ax
	sourceline 805
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

btnHTMLUnpause_OnClick$2: ; 2 args
	sourceline 808
	thisaddr 17920
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 809
	setfuncargs 0
	li ax, hidePause
	farcall ax
	sourceline 810
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
"__NEWSCRIPTSTART_showsplash.ash"
"__NEWSCRIPTSTART_chara enums.ash"
"__NEWSCRIPTSTART_ViewportFixer.ash"
"__NEWSCRIPTSTART_dialog.ash"
"__NEWSCRIPTSTART_Observation Text.ash"
"__NEWSCRIPTSTART_Menu Stuff.ash"
"__NEWSCRIPTSTART_GlobalScript.ash"
"__NEWSCRIPTSTART_GlobalScript.asc"
"textLook"
"textUse"
"textInvFail"
"Something\'s fucked up. Tell CJ Hotspot, %d."
"textLook"
"textUse"
"textInvFail"
"Something\'s fucked up. Tell CJ Object, %d."
"They\'re just standing around."
"They\'re not in a talking mood."
"They don\'t want it."
"Something\'s fucked up. Tell CJ Character, %d."
"@OVERHOTSPOT"
""
""
"textLook"
"textLook"
""
"screenshot.pcx"
""
"I don\'t think drinking this would be wise."
"$APPDATADIR$/settings.ini"
"audio"
"master"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"audio"
"bgm"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"audio"
"ambient"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"audio"
"sfx"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"visual"
"tintRed"
"visual"
"tintGreen"
"visual"
"tintBlue"
"$APPDATADIR$/settings.ini"
"Save/Load is unavailable in the web build - sorry about that!"
"$APPDATADIR$/settings.ini"
"gameplay"
"panModeDrag"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"gameplay"
"panModeDrag"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"gameplay"
"panQuickturnEnabled"
"$APPDATADIR$/settings.ini"
"What am I going to do with myself\?"
"Pull yourself together, Dunst."
"Is it too late to go back to bed\?"
"...No, no, gotta fix this."
""
"$APPDATADIR$/settings.ini"
"audio"
"bloop"
"$APPDATADIR$/settings.ini"
"Ugh... my hair feels so oily. I bet it\'s sticking up right now."
"...Maybe later."
"Sweeping things under the rug is what I do best."
"Let\'s not go that far."
"They do look kind of tasty-"
"No, no. No more eating wax. You\'re not six years old."
"I\'ll put these on when I have a specific task in mind."
"...In other words, I should use these on something else."
"Just holding this thing is giving me a bad feeling."
"I\'d rather not put it on..."
"There\'s no need to save here. The title screen can\'t hurt you."
""
"Please enter a name for your saved game."
"You\'ve somehow hit the maximum save count of 20. Please delete a couple."
"Please select a saved game to delete."
""
""
"Please select a saved game to be loaded."
"Please select a saved game to be loaded"
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
000000000084"Room::ProcessClick^3"
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
000000000105"Debug"
000000000106""
000000000107""
000000000108""
000000000109""
000000000110"RestoreGameDialog"
000000000111""
000000000112"RestartGame"
000000000113"SaveGameSlot"
000000000114"RestoreGameSlot"
000000000115"DeleteSaveSlot"
000000000116""
000000000117"GetLocationType"
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
000000000129"Mouse::ChangeModeGraphic^2"
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
000000000188"InventoryItem::GetAtScreenXY^2"
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
000000000252"TintScreen"
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
000000000276"SaveScreenShot"
000000000277""
000000000278""
000000000279""
000000000280""
000000000281""
000000000282""
000000000283""
000000000284""
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
000000000368"Slider::get_Value"
000000000369"Slider::set_Value"
000000000370""
000000000371""
000000000372"TextBox::get_Text"
000000000373"TextBox::set_Text"
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
000000000393"ListBox::Clear^0"
000000000394""
000000000395"ListBox::FillSaveGameList^0"
000000000396""
000000000397""
000000000398""
000000000399""
000000000400""
000000000401""
000000000402""
000000000403"ListBox::get_ItemCount"
000000000404"ListBox::geti_Items"
000000000405"ListBox::seti_Items"
000000000406""
000000000407""
000000000408"ListBox::get_SelectedIndex"
000000000409"ListBox::set_SelectedIndex"
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
000000000447"GUI::get_ZOrder"
000000000448"GUI::set_ZOrder"
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
000000000464"Hotspot::GetAtScreenXY^2"
000000000465""
000000000466"Hotspot::GetTextProperty^1"
000000000467"Hotspot::RunInteraction^1"
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
000000000590"System::get_OperatingSystem"
000000000591""
000000000592""
000000000593""
000000000594"System::get_Volume"
000000000595"System::set_Volume"
000000000596"System::get_VSync"
000000000597"System::set_VSync"
000000000598""
000000000599""
000000000600""
000000000601""
000000000602""
000000000603""
000000000604""
000000000605""
000000000606""
000000000607"Object::GetAtScreenXY^2"
000000000608""
000000000609"Object::GetTextProperty^1"
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
000000000668""
000000000669""
000000000670""
000000000671""
000000000672""
000000000673""
000000000674""
000000000675"Character::GetAtScreenXY^2"
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
000000000702"Character::get_ActiveInventory"
000000000703"Character::set_ActiveInventory"
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
000000000802"Game::GetLocationName^2"
000000000803""
000000000804""
000000000805""
000000000806""
000000000807""
000000000808""
000000000809""
000000000810""
000000000811"Game::SetAudioTypeVolume^3"
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
000000000924"mouse"
000000000925""
000000000926""
000000000927""
000000000928""
000000000929""
000000000930"savegameindex"
000000000931""
000000000932""
000000000933""
000000000934""
000000000935""
000000000936"cClarissa"
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
000000000996"iGloves"
000000000997"iDuck"
000000000998"iBroom"
000000000999"iCandles"
000000001000"iDrainCleaner"
000000001001"iMatches"
000000001002"iNecklace"
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
000000001017"dCoolRanch"
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
000000001035""
000000001036"gSplash"
000000001037""
000000001038""
000000001039""
000000001040""
000000001041"gInventory"
000000001042""
000000001043"lblInvDescription"
000000001044"btnInvClose"
000000001045""
000000001046"txtSearch"
000000001047""
000000001048""
000000001049""
000000001050""
000000001051""
000000001052""
000000001053"gMenuTabs"
000000001054""
000000001055""
000000001056""
000000001057""
000000001058"gMenuSound"
000000001059""
000000001060""
000000001061""
000000001062""
000000001063"slMaster"
000000001064"slBGM"
000000001065"slAMB"
000000001066"slSFX"
000000001067""
000000001068"slBloops"
000000001069"gMenuGame"
000000001070""
000000001071""
000000001072""
000000001073""
000000001074""
000000001075""
000000001076""
000000001077""
000000001078"gMenuVis"
000000001079""
000000001080""
000000001081""
000000001082"slTintRed"
000000001083"slTintGreen"
000000001084"slTintBlue"
000000001085"gMenuPause"
000000001086""
000000001087""
000000001088""
000000001089""
000000001090"gInventoryContainer"
000000001091""
000000001092""
000000001093""
000000001094""
000000001095"lblInvContDescrip"
000000001096""
000000001097"gWebpage"
000000001098""
000000001099""
000000001100""
000000001101"gSaveGame"
000000001102"lstSaveList"
000000001103""
000000001104""
000000001105"txtSaveNames"
000000001106""
000000001107""
000000001108"gMenuQuit"
000000001109""
000000001110""
000000001111""
000000001112""
000000001113""
000000001114"btnPauseHov"
000000001115"btnInvHov"
000000001116"gMenuTabsHTML"
000000001117""
000000001118""
000000001119""
000000001120"fastForward"
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
000000001132"panModeDrag"
000000001133""
000000001134""
000000001135""
000000001136""
000000001137""
000000001138""
000000001139"panQuickturnEnabled"
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
000000001152"leavingRoom"
000000001153""
000000001154""
000000001155""
000000001156""
000000001157""
000000001158""
000000001159"JustLoaded"
000000001160""
000000001161""
000000001162""
000000001163""
000000001164""
000000001165""
000000001166""
000000001167"DisableJumpscares"
000000001168"PlayingInBrowser"
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
000000001193"IniFile::WriteInt^3"
000000001194""
000000001195"IniFile::WriteBool^3"
000000001196""
000000001197"loadSettings"
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
000000001536"clearTrans"
000000001537"playAnimation"
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
000000001553"Character::Speak"
000000001554""
000000001555""
000000001556"Narrate"
000000001557""
000000001558""
000000001559""
000000001560""
000000001561"Dialog::StartDialog"
000000001562""
000000001563""
000000001564""
000000001565"LocateHotspot"
000000001566""
000000001567"showInventory"
000000001568"hideInventory"
000000001569"showPause"
000000001570"hidePause"
000000001571""
000000001572""
000000001573""
000000001574""
000000001575"manhandleInventory"
000000001576""
.exports
000000000000"targetContainer"
2:000000000004
000000000001"game_start$0"
1:000000000000
000000000002"room_AfterFadeIn$0"
1:000000000191
000000000003"updateMouseGraphic$0"
1:000000000210
000000000004"unhandled_event$2"
1:000000000391
000000000005"updateHover$0"
1:000000001204
000000000006"repeatedly_execute$0"
1:000000001606
000000000007"repeatedly_execute_always$0"
1:000000001770
000000000008"on_key_press$1"
1:000000001872
000000000009"panorama_click$1"
1:000000002491
000000000010"on_mouse_click$1"
1:000000003370
000000000011"on_event$2"
1:000000003697
000000000012"dialog_request$1"
1:000000003792
000000000013"btnExitGame_OnClick$2"
1:000000003802
000000000014"btnPlay_OnClick$2"
1:000000003821
000000000015"btnQuit_OnClick$2"
1:000000003840
000000000016"iCup_Interact$0"
1:000000003875
000000000017"gInventory_OnClick$2"
1:000000003916
000000000018"slMaster_OnChange$1"
1:000000003935
000000000019"slBGM_OnChange$1"
1:000000005119
000000000020"slAMB_OnChange$1"
1:000000006307
000000000021"slSFX_OnChange$1"
1:000000007495
000000000022"btnShowAudio_OnClick$2"
1:000000008683
000000000023"btnShowVis_OnClick$2"
1:000000008815
000000000024"btnShowGame_OnClick$2"
1:000000008947
000000000025"slTintRed_OnChange$1"
1:000000009037
000000000026"btnOpenQuit_OnClick$2"
1:000000010371
000000000027"btnRestore_OnClick$2"
1:000000010421
000000000028"Button1_OnClick$2"
1:000000010449
000000000029"btnPause_OnClick$2"
1:000000010566
000000000030"btnClose_OnClick$2"
1:000000010656
000000000031"gMenuPause_OnClick$2"
1:000000010684
000000000032"slTurnSpeed_OnChange$1"
1:000000010703
000000000033"btnPanAuto_OnClick$2"
1:000000010722
000000000034"btnPanDrag_OnClick$2"
1:000000011862
000000000035"btnCloseContainer_OnClick$2"
1:000000013002
000000000036"btnStateInitial_OnClick$2"
1:000000013030
000000000037"btnBuildingBlackout_OnClick$2"
1:000000013049
000000000038"btnDestroyFloor_OnClick$2"
1:000000013068
000000000039"btnDingy_OnClick$2"
1:000000013087
000000000040"btnPanKeybrd_OnClick$2"
1:000000013106
000000000041"cClarissa_Interact$0"
1:000000014267
000000000042"lstSuggestions_OnSelectionChanged$1"
1:000000014522
000000000043"txtSearch_OnActivate$1"
1:000000014541
000000000044"btnBack_OnClick$2"
1:000000014560
000000000045"slBloops_OnChange$1"
1:000000014643
000000000046"cClarissa_Look$0"
1:000000015831
000000000047"cClarissa_UseInv$0"
1:000000015859
000000000048"Button2_OnClick$2"
1:000000016326
000000000049"btnSave_OnClick$2"
1:000000016377
000000000050"btnDelSave_OnClick$2"
1:000000016947
000000000051"lstSaveList_OnSelectionChanged$1"
1:000000017156
000000000052"btnLoad_OnClick$2"
1:000000017248
000000000053"btnWaitNo_OnClick$2"
1:000000017590
000000000054"btnReallyQuit_OnClick$2"
1:000000017711
000000000055"btnSmallQuit_OnClick$2"
1:000000017746
000000000056"btnPauseHov_OnClick$2"
1:000000017836
000000000057"btnInvHov_OnClick$2"
1:000000017864
000000000058"btnInvClose_OnClick$2"
1:000000017892
000000000059"btnHTMLUnpause_OnClick$2"
1:000000017920
.sections
"GlobalScript.asc" = 0

