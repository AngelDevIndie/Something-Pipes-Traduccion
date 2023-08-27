.data
int var000000 = 0 ; unreferenced variable, assuming char
export char targetContainer = 0
char[31] var000005 = 0 ; unreferenced variable, assuming char
int var000036 = 0
int var000040 = 0
.text

oGoBack_Interact$0: ; 0 args
	sourceline 6
	thisaddr 0
	sourceline 7
	li ax, 0
	farpush ax
	li ax, 2
	farpush ax
	setfuncargs 2
	li ax, moveRoom
	farcall ax
	farsubsp 2
	sourceline 8
	li ax, 0
	ret 

room_Load$0: ; 0 args
	sourceline 11
	thisaddr 31
	sourceline 12
	li mar, SinkSpit
	memread4 ax
	jzi label000000000073
	li ax, 279
	mr bx, ax
	li mar, oDrain
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
label000000000073: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 15
	li mar, BathroomLightOn
	memread4 ax
	jzi label000000000098
	li ax, 0
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
	jmpi label000000000114
label000000000098: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 19
	li ax, 1
	farpush ax
	setfuncargs 1
	li ax, SetBackgroundFrame
	farcall ax
	farsubsp 1
label000000000114: ; inside room_Load$0, ; referenced by 1 spots
	sourceline 20
	li ax, 0
	ret 

IsWaterOn$0: ; 0 args
	sourceline 23
	thisaddr 120
	sourceline 24
	li mar, @var000036
	memread4 ax
	jnzi label000000000148
	push ax
	li mar, @var000040
	memread4 ax
	pop bx
	lor bx, ax
	mr ax, bx
label000000000148: ; inside IsWaterOn$0, ; referenced by 1 spots
	jzi label000000000170
	sourceline 26
	li ax, 1
	li mar, IsTapOn
	memwrite4 ax
	sourceline 27
	li ax, 1
	ret 
	sourceline 28
	jmpi label000000000186
label000000000170: ; inside IsWaterOn$0, ; referenced by 1 spots
	sourceline 30
	li ax, 0
	li mar, IsTapOn
	memwrite4 ax
	sourceline 31
	li ax, 0
	ret 
label000000000186: ; inside IsWaterOn$0, ; referenced by 1 spots
	sourceline 33
	li ax, 0
	ret 

hHotTap_Interact$0: ; 0 args
	sourceline 36
	thisaddr 192
	sourceline 37
	li mar, @var000036
	memread4 ax
	jzi label000000000247
	sourceline 39
	li ax, 0
	li mar, @var000036
	memwrite4 ax
	sourceline 40
	li ax, 0
	li mar, IsTapHot
	memwrite4 ax
	sourceline 41
	li ax, "Chirrido. Ya est� bien."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 42
	jmpi label000000000313
label000000000247: ; inside hHotTap_Interact$0, ; referenced by 1 spots
	sourceline 45
	li ax, 1
	li mar, @var000036
	memwrite4 ax
	sourceline 46
	li ax, 0
	li mar, @var000040
	memwrite4 ax
	sourceline 47
	li ax, 1
	li mar, IsTapHot
	memwrite4 ax
	sourceline 48
	li ax, "Chirrido. Agradable y caliente ahora."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 49
	li ax, "... Hm. Se est� empa�ando un poco esto."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000000313: ; inside hHotTap_Interact$0, ; referenced by 1 spots
	sourceline 52
	li ax, IsWaterOn$0
	call ax
	mr bx, ax
	li mar, oWater
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 53
	li ax, 0
	ret 

hColdTap_Interact$0: ; 0 args
	sourceline 56
	thisaddr 352
	sourceline 57
	li mar, @var000040
	memread4 ax
	jzi label000000000397
	sourceline 59
	li ax, 0
	li mar, @var000040
	memwrite4 ax
	sourceline 60
	li ax, "Chirrido. Ya est� bien."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 61
	jmpi label000000000445
label000000000397: ; inside hColdTap_Interact$0, ; referenced by 1 spots
	sourceline 64
	li ax, 1
	li mar, @var000040
	memwrite4 ax
	sourceline 65
	li ax, 0
	li mar, @var000036
	memwrite4 ax
	sourceline 66
	li ax, 0
	li mar, IsTapHot
	memwrite4 ax
	sourceline 67
	li ax, "Chirrido. Agradable y fr�a ahora"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000000445: ; inside hColdTap_Interact$0, ; referenced by 1 spots
	sourceline 70
	li ax, IsWaterOn$0
	call ax
	mr bx, ax
	li mar, oWater
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Visible
	farcall ax
	farsubsp 1
	pop op
	sourceline 71
	li ax, 0
	ret 

oDrain_Look$0: ; 0 args
	sourceline 74
	thisaddr 484
	sourceline 75
	li mar, BathroomLightOn
	memread4 ax
	not ax
	jzi label000000000517
	li ax, "Est� demasiado oscuro para ver nada ah� abajo."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000000722
label000000000517: ; inside oDrain_Look$0, ; referenced by 1 spots
	sourceline 78
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
	jzi label000000000593
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
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000000593: ; inside oDrain_Look$0, ; referenced by 1 spots
	jzi label000000000704
	sourceline 79
	push op
	li ax, 0
	farpush ax
	li ax, "Hmm. Todo parece despejado ah� abajo."
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
	sourceline 80
	push op
	li ax, 0
	farpush ax
	li ax, "�Quiz�s est� en una l�nea de agua separada\?"
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
	sourceline 81
	push op
	li ax, 0
	farpush ax
	li ax, "%a No, no, eso es rid�culo."
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
	jmpi label000000000722
label000000000704: ; inside oDrain_Look$0, ; referenced by 1 spots
	sourceline 85
	li ax, "Un momento. Hay algo en el desag�e."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000000722: ; inside oDrain_Look$0, ; referenced by 2 spots
	sourceline 86
	li ax, 0
	ret 

BloodyItem$1: ; 1 args
	sourceline 89
	thisaddr 728
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 90
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
	jzi label000000000830
	sourceline 91
	push op
	li ax, "Empapado en rojo y sin brillo en los ojos. �Qu� has visto, Cool Ranch\?"
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
	sourceline 92
	li ax, 360
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
label000000000830: ; inside BloodyItem$1, ; referenced by 1 spots
	sourceline 94
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
	jzi label000000000922
	sourceline 95
	push op
	li ax, "Las cerdas est�n manchadas de rojo oscuro. �La madera siempre fue as� de vieja y agrietada...\?"
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
	sourceline 96
	li ax, 362
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
label000000000922: ; inside BloodyItem$1, ; referenced by 1 spots
	sourceline 98
	push op
	li ax, 1
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
	sourceline 99
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

oDrain_Interact$0: ; 0 args
	sourceline 102
	thisaddr 966
	sourceline 103
	li mar, SinkSpit
	memread4 ax
	not ax
	jzi label000000000999
	li ax, "Mi brazo no cabe ah�."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000001619
label000000000999: ; inside oDrain_Interact$0, ; referenced by 1 spots
	sourceline 109
	li ax, "Definitivamente hay algo ah�. S�lo tengo que moverlo para soltarlo, y..."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 110
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
	jzi label000000001370
	sourceline 111
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
	sourceline 112
	push op
	li ax, 0
	farpush ax
	li ax, "�Es el pato! No pens� que fuera *tan* flexible..."
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
	sourceline 113
	push op
	li ax, 0
	farpush ax
	li ax, "%a No importa. Me alegro de tenerte de vuelta."
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
	sourceline 114
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
	li ax, Character::HasInventory^1
	farcall ax
	farsubsp 1
	pop op
	not ax
	jzi label000000001208
	push ax
	li mar, LitCandles
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001208: ; inside oDrain_Interact$0, ; referenced by 1 spots
	jzi label000000001285
	sourceline 116
	li ax, "Espera... algo est� atado a su base con... �eso es hilo\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 117
	li ax, "�Una caja de cerillas\? �C�mo lleg� eso ah� abajo\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 118
	push op
	li ax, 31998
	farpush ax
	li mar, iMatches
	mr ax, mar
	farpush ax
	li mar, player
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, Character::AddInventory^2
	farcall ax
	farsubsp 2
	pop op
label000000001285: ; inside oDrain_Interact$0, ; referenced by 1 spots
	sourceline 121
	push op
	li mar, iDuck
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::LoseInventory^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 122
	push op
	li ax, 31998
	farpush ax
	li mar, iDuck
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
	sourceline 123
	li mar, iDuck
	mr ax, mar
	push ax
	li ax, BloodyItem$1
	call ax
	subi sp, 4
label000000001370: ; inside oDrain_Interact$0, ; referenced by 1 spots
	sourceline 126
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
	jzi label000000001609
	sourceline 127
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
	sourceline 128
	li ax, "\?\?\?"
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 129
	push op
	li ax, 0
	farpush ax
	li ax, "�Ah� est� mi escoba!"
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
	sourceline 130
	push op
	li ax, 0
	farpush ax
	li ax, "%a Yo... Deber�a limpiar esto."
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
	li mar, iBroom
	mr ax, mar
	farpush ax
	li mar, cSink
	mr ax, mar
	callobj ax
	setfuncargs 1
	li ax, Character::LoseInventory^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 132
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
	sourceline 133
	li mar, iBroom
	mr ax, mar
	push ax
	li ax, BloodyItem$1
	call ax
	subi sp, 4
label000000001609: ; inside oDrain_Interact$0, ; referenced by 1 spots
	sourceline 136
	li ax, 0
	li mar, SinkSpit
	memwrite4 ax
label000000001619: ; inside oDrain_Interact$0, ; referenced by 1 spots
	sourceline 138
	li ax, 278
	mr bx, ax
	li mar, oDrain
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Object::set_Graphic
	farcall ax
	farsubsp 1
	pop op
	sourceline 139
	li ax, 0
	ret 

oWater_Interact$0: ; 0 args
	sourceline 142
	thisaddr 1656
	sourceline 143
	li mar, @var000036
	memread4 ax
	jzi label000000001687
	li ax, "�Ouch! S�, est� caliente."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	jmpi label000000001705
label000000001687: ; inside oWater_Interact$0, ; referenced by 1 spots
	sourceline 147
	li ax, "Hm... sigue bastante fr�a."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000001705: ; inside oWater_Interact$0, ; referenced by 1 spots
	sourceline 148
	li ax, 0
	ret 

oWater_Look$0: ; 0 args
	sourceline 153
	thisaddr 1711
	sourceline 154
	li ax, "Cristalina, a diferencia del ba�o. Qu� extra�o."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 155
	li ax, "... Deber�a dejar de desperdiciar agua. Hay sequ�a."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
	sourceline 156
	li ax, 0
	ret 

CleanItem$1: ; 1 args
	sourceline 159
	thisaddr 1757
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 160
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
	jzi label000000001863
	sourceline 161
	push op
	li ax, "He limpiado toda la sangre, pero algo me sigue pareciendo... mal. �Qu� has visto, pato\?"
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
	sourceline 162
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
	sourceline 163
	jmpi label000000001955
label000000001863: ; inside CleanItem$1, ; referenced by 1 spots
	sourceline 165
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
	jzi label000000001955
	sourceline 166
	push op
	li ax, "La �nica prueba de lo que ha pasado son las cerdas manchadas. �C�mo demonios ha podido pasar por las tuber�as\?"
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
	sourceline 167
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
label000000001955: ; inside CleanItem$1, ; referenced by 2 spots
	sourceline 170
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
	sourceline 171
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
	sourceline 172
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
	sourceline 173
	push op
	li ax, 0
	farpush ax
	li ax, "Listo. Limpio otra vez."
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
	sourceline 174
	push op
	li ax, 0
	farpush ax
	li ax, "%a Bueno. Tan limpio como nunca va a estar."
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
	sourceline 175
	li ax, 0
	ptrstack 8
	ptrzerond 
	ret 

oWater_UseInv$0: ; 0 args
	sourceline 179
	thisaddr 2130
	sourceline 180
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
	jzi label000000002228
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
	jmpi label000000002246
label000000002228: ; inside oWater_UseInv$0, ; referenced by 1 spots
	sourceline 184
	li ax, "No hace falta mojarse tanto."
	newstr ax
	farpush ax
	setfuncargs 1
	li ax, Narrate
	farcall ax
	farsubsp 1
label000000002246: ; inside oWater_UseInv$0, ; referenced by 1 spots
	sourceline 185
	li ax, 0
	ret 

room_Leave$0: ; 0 args
	sourceline 188
	thisaddr 2252
	sourceline 189
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
	sourceline 190
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
"__NEWSCRIPTSTART_room4.asc"
"Squeak. That\'s enough of that."
"Squeak. Nice and hot now."
"...Hm. It\'s getting a bit steamy in here."
"Squeak. That\'s enough of that."
"Squeak. Nice and cold now."
"It\'s way too dark to see anything down there."
"Hmm. Everything looks clear down there."
"Maybe it\'s on a separate water line\?"
"%a No, no, that\'s ridiculous."
"Hold on. There\'s something in the drainpipe."
"textLook"
"Drenched in red and lacking the glint in it\'s eye. What have you seen, Cool Ranch\?"
"textLook"
"The bristles are stained dark red. Was the wood always this old and cracked...\?"
"IsBloodied"
"My arm won\'t fit in there."
"There\'s definitely something in there. Just got to wiggle it loose, and..."
"It\'s the duck! I didn\'t think it was *that* flexible..."
"%a Doesn\'t matter. Glad to have you back."
"Hold on- something\'s tied to it\'s base with... is that yarn\?"
"A box of matches\? How did those get down there\?"
"\?\?\?"
"There\'s my broom!"
"%a I... I should wipe this off."
"Ouch! Yeah, that\'s hot."
"Hm... still pretty cold."
"Crystal clear, unlike the bath. How very strange."
"...I should stop wasting water. We\'re in a drought."
"textLook"
"I\'ve wiped off all the blood, but something still seems... wrong. What have you seen, duck\?"
"textLook"
"The only proof of what it\'s been through is the stained bristles. How on Earth did it fit through the pipes\?"
"IsBloodied"
"There. Clean again."
"%a Well. As clean as it\'s ever going to get."
"IsBloodied"
"No need to get that wet."
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
000000000439""
000000000440""
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
000000000665"Character::AddInventory^2"
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
000000000676""
000000000677""
000000000678"Character::HasInventory^1"
000000000679""
000000000680""
000000000681""
000000000682""
000000000683""
000000000684""
000000000685"Character::LoseInventory^1"
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
000000000935"cSink"
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
000000000952"aDuckA"
000000000953""
000000000954""
000000000955""
000000000956""
000000000957""
000000000958""
000000000959"aWaterSplash_InspectorJ"
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
000000000997"iDuck"
000000000998"iBroom"
000000000999""
000000001000""
000000001001"iMatches"
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
000000001121"oWater"
000000001122"oDrain"
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
000000001197"BathroomLightOn"
000000001198""
000000001199""
000000001200""
000000001201"SinkSpit"
000000001202""
000000001203"IsTapHot"
000000001204"IsTapOn"
000000001205""
000000001206""
000000001207"LitCandles"
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
000000001223"Character::SetMood"
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
000000001591"moveRoom"
000000001592""
000000001593""
000000001594""
000000001595""
000000001596""
000000001597""
000000001598""
000000001599""
000000001600""
000000001601""
000000001602""
000000001603""
000000001604""
000000001605""
000000001606"Character::Speak"
000000001607""
000000001608""
000000001609"Narrate"
000000001610""
000000001611""
000000001612""
000000001613""
000000001614""
000000001615""
000000001616""
000000001617""
000000001618""
000000001619""
000000001620""
000000001621""
000000001622""
000000001623""
000000001624""
000000001625""
000000001626""
000000001627""
000000001628""
000000001629""
.exports
000000000000"targetContainer"
2:000000000004
000000000001"oGoBack_Interact$0"
1:000000000000
000000000002"room_Load$0"
1:000000000031
000000000003"IsWaterOn$0"
1:000000000120
000000000004"hHotTap_Interact$0"
1:000000000192
000000000005"hColdTap_Interact$0"
1:000000000352
000000000006"oDrain_Look$0"
1:000000000484
000000000007"BloodyItem$1"
1:000000000728
000000000008"oDrain_Interact$0"
1:000000000966
000000000009"oWater_Interact$0"
1:000000001656
000000000010"oWater_Look$0"
1:000000001711
000000000011"CleanItem$1"
1:000000001757
000000000012"oWater_UseInv$0"
1:000000002130
000000000013"room_Leave$0"
1:000000002252
.sections
"room4.asc" = 0

