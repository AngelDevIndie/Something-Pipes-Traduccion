.data
int var000000 = 0 ; unreferenced variable, assuming char
export int Controls = 0
int var000008 = 0
int var000012 = 0
int var000016 = 0
char[8] var000020 = 0 ; unreferenced variable, assuming char
int var000028 = 0
int var000032 = 0
.text

String::Trim$0: ; 0 args
	sourceline 15
	thisaddr 0
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 16
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 17
	push op
	pop mar
	mr ax, mar
	push op
	callobj ax
	setfuncargs 0
	li ax, String::get_Length
	farcall ax
	pop op
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000000069: ; inside String::Trim$0, ; referenced by 1 spots
	sourceline 19
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000000201
	push ax
	push op
	ptrstack 16
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
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000000193
	push ax
	push op
	ptrstack 20
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
	li ax, 9
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000193: ; inside String::Trim$0, ; referenced by 1 spots
	pop bx
	land bx, ax
	mr ax, bx
label000000000201: ; inside String::Trim$0, ; referenced by 1 spots
	jzi label000000000214
	ptrstack 8
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000000069
label000000000214: ; inside String::Trim$0, ; referenced by 2 spots
	sourceline 22
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000000346
	push ax
	push op
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
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000000338
	push ax
	push op
	ptrstack 16
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
	li ax, 9
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000338: ; inside String::Trim$0, ; referenced by 1 spots
	pop bx
	land bx, ax
	mr ax, bx
label000000000346: ; inside String::Trim$0, ; referenced by 1 spots
	jzi label000000000359
	ptrstack 4
	memread4 ax
	subi ax, 1
	memwrite4 ax
	jmpi label000000000214
label000000000359: ; inside String::Trim$0, ; referenced by 1 spots
	sourceline 25
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000000390
	li ax, ""
	newstr ax
	subi sp, 12
	ret 
label000000000390: ; inside String::Trim$0, ; referenced by 1 spots
	sourceline 28
	push op
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	setfuncargs 2
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	subi sp, 12
	ret 
	sourceline 29
	li ax, 0
	subi sp, 12
	ret 

IniFile::InsertLine$1: ; 1 args
	sourceline 36
	thisaddr 466
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 37
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	push ax
	li ax, 250
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000000533
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 0
	pop bx
	lt bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000533: ; inside IniFile::InsertLine$1, ; referenced by 1 spots
	jnzi label000000000569
	push ax
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000569: ; inside IniFile::InsertLine$1, ; referenced by 1 spots
	jzi label000000000578
	li ax, 0
	subi sp, 4
	ret 
label000000000578: ; inside IniFile::InsertLine$1, ; referenced by 1 spots
	sourceline 40
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 41
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000000615: ; inside IniFile::InsertLine$1, ; referenced by 1 spots
	sourceline 42
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000000725
	sourceline 44
	ptrstack 4
	memread4 ax
	subi ax, 1
	memwrite4 ax
	sourceline 45
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	push op
	push ax
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 46
	jmpi label000000000615
label000000000725: ; inside IniFile::InsertLine$1, ; referenced by 1 spots
	sourceline 48
	li ax, 1
	subi sp, 8
	ret 
	sourceline 49
	li ax, 0
	subi sp, 8
	ret 

IniFile::DeleteLine$1: ; 1 args
	sourceline 56
	thisaddr 743
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 57
	ptrstack 12
	memread4 ax
	push ax
	li ax, 0
	pop bx
	lt bx, ax
	mr ax, bx
	jnzi label000000000811
	push ax
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	gte bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000811: ; inside IniFile::DeleteLine$1, ; referenced by 1 spots
	jzi label000000000820
	li ax, 0
	subi sp, 4
	ret 
label000000000820: ; inside IniFile::DeleteLine$1, ; referenced by 1 spots
	sourceline 60
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	subi ax, 1
	memwrite4 ax
label000000000837: ; inside IniFile::DeleteLine$1, ; referenced by 1 spots
	sourceline 61
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000000953
	sourceline 63
	push op
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	push op
	push ax
	ptrstack 20
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 64
	ptrstack 12
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 65
	jmpi label000000000837
label000000000953: ; inside IniFile::DeleteLine$1, ; referenced by 1 spots
	sourceline 67
	li ax, 0
	push op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 68
	li ax, 1
	subi sp, 4
	ret 
	sourceline 69
	li ax, 0
	subi sp, 4
	ret 

IniFile::FindSection$1: ; 1 args
	sourceline 76
	thisaddr 1026
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 77
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 78
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 80
	push op
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, String::LowerCase^0
	farcall ax
	pop op
	ptrstack 24
	push mar
	pop mar
	ptrset ax
label000000001107: ; inside IniFile::FindSection$1, ; referenced by 1 spots
	sourceline 81
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000001444
	sourceline 83
	push op
	ptrstack 16
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 84
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	farpush ax
	setfuncargs 1
	li ax, String::IsNullOrEmpty^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000001258
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
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
	li ax, 91
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000001258: ; inside IniFile::FindSection$1, ; referenced by 1 spots
	jzi label000000001429
	sourceline 86
	push op
	li ax, "]"
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
	ptrstack 8
	memwrite4 ax
	sourceline 87
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001429
	sourceline 89
	push op
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 90
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, String::LowerCase^0
	farcall ax
	pop op
	push ax
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	pop bx
	streq bx, ax
	mr ax, bx
	jzi label000000001429
	ptrstack 12
	memread4 ax
	ptrstack 24
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 16
	ret 
label000000001429: ; inside IniFile::FindSection$1, ; referenced by 3 spots
	sourceline 94
	ptrstack 12
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 95
	jmpi label000000001107
label000000001444: ; inside IniFile::FindSection$1, ; referenced by 1 spots
	sourceline 96
	ptrstack 12
	memread4 ax
	ptrstack 24
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 16
	ret 
	sourceline 97
	li ax, 0
	ptrstack 24
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 16
	ret 

IniFile::FindKey$2: ; 2 args
	sourceline 104
	thisaddr 1475
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 105
	push op
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindSection$1
	call ax
	subi sp, 4
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 106
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 108
	push op
	ptrstack 32
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, String::LowerCase^0
	farcall ax
	pop op
	ptrstack 28
	push mar
	pop mar
	ptrset ax
label000000001603: ; inside IniFile::FindKey$2, ; referenced by 1 spots
	sourceline 109
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000002061
	sourceline 111
	push op
	ptrstack 16
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 112
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	farpush ax
	setfuncargs 1
	li ax, String::IsNullOrEmpty^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000002046
	sourceline 114
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
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
	li ax, 91
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001771
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	ptrstack 28
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 16
	ret 
label000000001771: ; inside IniFile::FindKey$2, ; referenced by 1 spots
	sourceline 117
	push op
	li ax, ";"
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
	ptrstack 8
	memwrite4 ax
	sourceline 118
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000001863
	push op
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
label000000001863: ; inside IniFile::FindKey$2, ; referenced by 1 spots
	sourceline 121
	push op
	li ax, "="
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
	ptrstack 8
	memwrite4 ax
	sourceline 122
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000002046
	sourceline 124
	push op
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 125
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, String::Trim$0
	call ax
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 126
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, String::LowerCase^0
	farcall ax
	pop op
	push ax
	ptrstack 32
	push mar
	pop mar
	ptrget ax
	pop bx
	streq bx, ax
	mr ax, bx
	jzi label000000002046
	ptrstack 12
	memread4 ax
	ptrstack 28
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 16
	ret 
label000000002046: ; inside IniFile::FindKey$2, ; referenced by 3 spots
	sourceline 130
	ptrstack 12
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 131
	jmpi label000000001603
label000000002061: ; inside IniFile::FindKey$2, ; referenced by 1 spots
	sourceline 132
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	ptrstack 28
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 16
	ret 
	sourceline 133
	li ax, 0
	ptrstack 28
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 16
	ret 

IniFile::FindLastKey$1: ; 1 args
	sourceline 142
	thisaddr 2104
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 143
	push op
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindSection$1
	call ax
	subi sp, 4
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 144
	ptrstack 4
	memread4 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 145
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 147
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002447
	sourceline 149
	ptrstack 16
	memread4 ax
	push ax
	li ax, 2
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	li ax, 250
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000002278
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 
label000000002278: ; inside IniFile::FindLastKey$1, ; referenced by 1 spots
	sourceline 152
	li ax, 2
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	add ax, bx
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memwrite4 ax
	sourceline 153
	li ax, ""
	newstr ax
	push op
	push ax
	ptrstack 24
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 154
	ptrstack 28
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, "[%s]"
	farpush ax
	setfuncargs 2
	li ax, String::Format^101
	farcall ax
	farsubsp 2
	push op
	push ax
	ptrstack 24
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 155
	ptrstack 16
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 
label000000002447: ; inside IniFile::FindLastKey$1, ; referenced by 1 spots
	sourceline 158
	ptrstack 16
	memread4 ax
	addi ax, 1
	memwrite4 ax
label000000002458: ; inside IniFile::FindLastKey$1, ; referenced by 1 spots
	sourceline 159
	ptrstack 16
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000002787
	sourceline 161
	push op
	ptrstack 20
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 162
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	farpush ax
	setfuncargs 1
	li ax, String::IsNullOrEmpty^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000002772
	sourceline 164
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
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
	li ax, 91
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002617
	ptrstack 12
	memread4 ax
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 
label000000002617: ; inside IniFile::FindLastKey$1, ; referenced by 1 spots
	sourceline 167
	push op
	li ax, ";"
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
	ptrstack 8
	memwrite4 ax
	sourceline 168
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000002709
	push op
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
label000000002709: ; inside IniFile::FindLastKey$1, ; referenced by 1 spots
	sourceline 171
	push op
	li ax, "="
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
	ptrstack 8
	memwrite4 ax
	sourceline 172
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000002772
	ptrstack 16
	memread4 ax
	ptrstack 12
	memwrite4 ax
label000000002772: ; inside IniFile::FindLastKey$1, ; referenced by 2 spots
	sourceline 175
	ptrstack 16
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 176
	jmpi label000000002458
label000000002787: ; inside IniFile::FindLastKey$1, ; referenced by 1 spots
	sourceline 177
	ptrstack 12
	memread4 ax
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 
	sourceline 178
	li ax, 0
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 

IniFile::Clear$0: ; 0 args
	sourceline 183
	thisaddr 2818
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
label000000002831: ; inside IniFile::Clear$0, ; referenced by 1 spots
	sourceline 184
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	jzi label000000002908
	sourceline 186
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	subi ax, 1
	memwrite4 ax
	sourceline 187
	li ax, 0
	push op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 188
	jmpi label000000002831
label000000002908: ; inside IniFile::Clear$0, ; referenced by 1 spots
	sourceline 189
	li ax, 0
	subi sp, 4
	ret 

IniFile::Load$1: ; 1 args
	sourceline 194
	thisaddr 2917
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 195
	li ax, 1
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	setfuncargs 2
	li ax, File::Open^2
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 196
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000003035
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
	li ax, File::get_Error
	farcall ax
	pop op
	pop bx
	lor bx, ax
	mr ax, bx
label000000003035: ; inside IniFile::Load$1, ; referenced by 1 spots
	jzi label000000003050
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000003050: ; inside IniFile::Load$1, ; referenced by 1 spots
	sourceline 199
	push op
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::Clear$0
	call ax
	pop op
label000000003070: ; inside IniFile::Load$1, ; referenced by 1 spots
	sourceline 200
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
	li ax, File::get_EOF
	farcall ax
	pop op
	not ax
	jzi label000000003137
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	push ax
	li ax, 250
	pop bx
	lt bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000003137: ; inside IniFile::Load$1, ; referenced by 1 spots
	jzi label000000003220
	sourceline 202
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, File::ReadRawLineBack^0
	farcall ax
	pop op
	push op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 203
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 204
	jmpi label000000003070
label000000003220: ; inside IniFile::Load$1, ; referenced by 1 spots
	sourceline 206
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, File::Close^0
	farcall ax
	pop op
	sourceline 207
	li ax, 1
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 208
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 

IniFile::Save$1: ; 1 args
	sourceline 213
	thisaddr 3273
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 214
	li ax, 2
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	setfuncargs 2
	li ax, File::Open^2
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 215
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jnzi label000000003391
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
	li ax, File::get_Error
	farcall ax
	pop op
	pop bx
	lor bx, ax
	mr ax, bx
label000000003391: ; inside IniFile::Save$1, ; referenced by 1 spots
	jzi label000000003406
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 8
	ret 
label000000003406: ; inside IniFile::Save$1, ; referenced by 1 spots
	sourceline 218
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000003419: ; inside IniFile::Save$1, ; referenced by 1 spots
	sourceline 219
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000003518
	sourceline 221
	push op
	push op
	ptrstack 12
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, File::WriteRawLine^1
	farcall ax
	farsubsp 1
	pop op
	sourceline 222
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 223
	jmpi label000000003419
label000000003518: ; inside IniFile::Save$1, ; referenced by 1 spots
	sourceline 225
	push op
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, File::Close^0
	farcall ax
	pop op
	sourceline 226
	li ax, 1
	ptrstack 20
	ptrzerond 
	ptrstack 8
	ptrzerond 
	subi sp, 12
	ret 
	sourceline 227
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 8
	ptrzerond 
	subi sp, 12
	ret 

IniFile::ListSections$2: ; 2 args
	sourceline 232
	thisaddr 3571
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 233
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 234
	mr mar, sp
	zeromem 4
	addi sp, 4
label000000003632: ; inside IniFile::ListSections$2, ; referenced by 1 spots
	sourceline 236
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000003965
	sourceline 238
	push op
	ptrstack 16
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 239
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	farpush ax
	setfuncargs 1
	li ax, String::IsNullOrEmpty^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000003783
	push ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
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
	li ax, 91
	pop bx
	cmpeq bx, ax
	mr ax, bx
	pop bx
	land bx, ax
	mr ax, bx
label000000003783: ; inside IniFile::ListSections$2, ; referenced by 1 spots
	jzi label000000003950
	sourceline 241
	push op
	li ax, "]"
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
	ptrstack 8
	memwrite4 ax
	sourceline 242
	ptrstack 8
	memread4 ax
	push ax
	li ax, 1
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000003950
	sourceline 244
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 36
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000003939
	push op
	ptrstack 12
	memread4 ax
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	farpush ax
	li ax, 1
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 2
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	push ax
	ptrstack 20
	memread4 ax
	mr dx, ax
	pop ax
	ptrstack 28
	muli dx, 4
	ptrget mar
	ptrassert 
	dynamicbounds dx
	add mar, dx
	push mar
	pop mar
	ptrset ax
label000000003939: ; inside IniFile::ListSections$2, ; referenced by 1 spots
	sourceline 247
	ptrstack 16
	memread4 ax
	addi ax, 1
	memwrite4 ax
label000000003950: ; inside IniFile::ListSections$2, ; referenced by 2 spots
	sourceline 250
	ptrstack 12
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 251
	jmpi label000000003632
label000000003965: ; inside IniFile::ListSections$2, ; referenced by 1 spots
	sourceline 253
	ptrstack 16
	memread4 ax
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 
	sourceline 254
	li ax, 0
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 

IniFile::ListKeys$3: ; 3 args
	sourceline 259
	thisaddr 3996
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 260
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindSection$1
	call ax
	subi sp, 4
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 261
	mr mar, sp
	zeromem 4
	addi sp, 4
label000000004104: ; inside IniFile::ListKeys$3, ; referenced by 1 spots
	sourceline 263
	ptrstack 12
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000004551
	sourceline 265
	push op
	ptrstack 16
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 266
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	farpush ax
	setfuncargs 1
	li ax, String::IsNullOrEmpty^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000004536
	sourceline 268
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
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
	li ax, 91
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000004266
	ptrstack 16
	memread4 ax
	ptrstack 32
	ptrzerond 
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 
label000000004266: ; inside IniFile::ListKeys$3, ; referenced by 1 spots
	sourceline 271
	push op
	li ax, ";"
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
	ptrstack 8
	memwrite4 ax
	sourceline 272
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000004358
	push op
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
label000000004358: ; inside IniFile::ListKeys$3, ; referenced by 1 spots
	sourceline 275
	push op
	li ax, "="
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
	ptrstack 8
	memwrite4 ax
	sourceline 276
	ptrstack 8
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000004536
	sourceline 278
	ptrstack 16
	memread4 ax
	push ax
	ptrstack 40
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000004525
	sourceline 280
	push op
	ptrstack 12
	memread4 ax
	farpush ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 1
	li ax, String::Truncate^1
	farcall ax
	farsubsp 1
	pop op
	ptrstack 4
	push mar
	pop mar
	ptrset ax
	sourceline 281
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, String::Trim$0
	call ax
	pop op
	push ax
	ptrstack 20
	memread4 ax
	mr dx, ax
	pop ax
	ptrstack 32
	muli dx, 4
	ptrget mar
	ptrassert 
	dynamicbounds dx
	add mar, dx
	push mar
	pop mar
	ptrset ax
label000000004525: ; inside IniFile::ListKeys$3, ; referenced by 1 spots
	sourceline 283
	ptrstack 16
	memread4 ax
	addi ax, 1
	memwrite4 ax
label000000004536: ; inside IniFile::ListKeys$3, ; referenced by 2 spots
	sourceline 286
	ptrstack 12
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 287
	jmpi label000000004104
label000000004551: ; inside IniFile::ListKeys$3, ; referenced by 1 spots
	sourceline 288
	ptrstack 16
	memread4 ax
	ptrstack 32
	ptrzerond 
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 
	sourceline 289
	li ax, 0
	ptrstack 32
	ptrzerond 
	ptrstack 28
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 20
	ret 

IniFile::SectionExists$1: ; 1 args
	sourceline 294
	thisaddr 4588
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 295
	push op
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindSection$1
	call ax
	subi sp, 4
	pop op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 296
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

IniFile::DeleteSection$1: ; 1 args
	sourceline 301
	thisaddr 4679
	ptrstack 8
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 302
	push op
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindSection$1
	call ax
	subi sp, 4
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 303
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000004777
	li ax, 0
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000004777: ; inside IniFile::DeleteSection$1, ; referenced by 1 spots
	sourceline 306
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindLastKey$1
	call ax
	subi sp, 4
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000004831: ; inside IniFile::DeleteSection$1, ; referenced by 1 spots
	sourceline 307
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000004945
	sourceline 309
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	push op
	push ax
	ptrstack 16
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 310
	ptrstack 8
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 311
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 312
	jmpi label000000004831
label000000004945: ; inside IniFile::DeleteSection$1, ; referenced by 2 spots
	sourceline 314
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000005036
	sourceline 316
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	subi ax, 1
	memwrite4 ax
	sourceline 317
	li ax, 0
	push op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 318
	jmpi label000000004945
label000000005036: ; inside IniFile::DeleteSection$1, ; referenced by 1 spots
	sourceline 319
	li ax, 0
	ptrstack 20
	ptrzerond 
	subi sp, 12
	ret 

IniFile::KeyExists$2: ; 2 args
	sourceline 324
	thisaddr 5048
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 325
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	ptrstack 16
	ptrzerond 
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 326
	li ax, 0
	ptrstack 16
	ptrzerond 
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

IniFile::DeleteKey$2: ; 2 args
	sourceline 331
	thisaddr 5161
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 332
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 333
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000005292
	push op
	ptrstack 8
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::DeleteLine$1
	call ax
	subi sp, 4
	pop op
label000000005292: ; inside IniFile::DeleteKey$2, ; referenced by 1 spots
	sourceline 335
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::Read$3: ; 3 args
	sourceline 340
	thisaddr 5307
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	ptrstack 16
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 341
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 342
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000005438
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000005438: ; inside IniFile::Read$3, ; referenced by 1 spots
	sourceline 345
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 346
	push op
	li ax, "="
	farpush ax
	ptrstack 24
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
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 348
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
	cmpeq bx, ax
	mr ax, bx
	jzi label000000005589
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000005589: ; inside IniFile::Read$3, ; referenced by 1 spots
	sourceline 351
	push op
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
	ptrstack 12
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
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
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 352
	push op
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, String::Trim$0
	call ax
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 353
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 354
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::ReadInt$3: ; 3 args
	sourceline 359
	thisaddr 5742
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 360
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 361
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000005860
	ptrstack 24
	memread4 ax
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000005860: ; inside IniFile::ReadInt$3, ; referenced by 1 spots
	sourceline 364
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 365
	push op
	li ax, "="
	farpush ax
	ptrstack 24
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
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 367
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
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006004
	ptrstack 24
	memread4 ax
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000006004: ; inside IniFile::ReadInt$3, ; referenced by 1 spots
	sourceline 370
	push op
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
	ptrstack 12
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
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
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 371
	push op
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, String::Trim$0
	call ax
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 372
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
	li ax, String::get_AsInt
	farcall ax
	pop op
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 373
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::ReadFloat$3: ; 3 args
	sourceline 378
	thisaddr 6171
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 379
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 380
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006289
	ptrstack 24
	memread4 ax
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000006289: ; inside IniFile::ReadFloat$3, ; referenced by 1 spots
	sourceline 383
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 384
	push op
	li ax, "="
	farpush ax
	ptrstack 24
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
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 386
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
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006433
	ptrstack 24
	memread4 ax
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000006433: ; inside IniFile::ReadFloat$3, ; referenced by 1 spots
	sourceline 389
	push op
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
	ptrstack 12
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
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
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 390
	push op
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, String::Trim$0
	call ax
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 391
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
	li ax, String::get_AsFloat
	farcall ax
	pop op
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 392
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::ReadBool$3: ; 3 args
	sourceline 397
	thisaddr 6600
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 398
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 399
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006718
	ptrstack 24
	memread4 ax
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000006718: ; inside IniFile::ReadBool$3, ; referenced by 1 spots
	sourceline 402
	push op
	ptrstack 8
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrget ax
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 403
	push op
	li ax, "="
	farpush ax
	ptrstack 24
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
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 405
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
	cmpeq bx, ax
	mr ax, bx
	jzi label000000006862
	ptrstack 24
	memread4 ax
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000006862: ; inside IniFile::ReadBool$3, ; referenced by 1 spots
	sourceline 408
	push op
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
	ptrstack 12
	memread4 ax
	pop bx
	sub bx, ax
	mr ax, bx
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
	li ax, String::Substring^2
	farcall ax
	farsubsp 2
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 409
	push op
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	li ax, String::Trim$0
	call ax
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 410
	push op
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, String::LowerCase^0
	farcall ax
	pop op
	ptrstack 20
	push mar
	pop mar
	ptrset ax
	sourceline 411
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, "1"
	pop bx
	streq bx, ax
	mr ax, bx
	jnzi label000000007061
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, "verdadero"
	pop bx
	streq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000007061: ; inside IniFile::ReadBool$3, ; referenced by 1 spots
	jnzi label000000007094
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, "on"
	pop bx
	streq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000007094: ; inside IniFile::ReadBool$3, ; referenced by 1 spots
	jnzi label000000007127
	push ax
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, "sí"
	pop bx
	streq bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000007127: ; inside IniFile::ReadBool$3, ; referenced by 1 spots
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 412
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::Write$3: ; 3 args
	sourceline 417
	thisaddr 7152
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	ptrstack 16
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 418
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 419
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007361
	sourceline 421
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindLastKey$1
	call ax
	subi sp, 4
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 422
	push op
	ptrstack 8
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::InsertLine$1
	call ax
	subi sp, 4
	pop op
	not ax
	jzi label000000007361
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000007361: ; inside IniFile::Write$3, ; referenced by 2 spots
	sourceline 425
	ptrstack 24
	push mar
	pop mar
	ptrget ax
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, "%s=%s"
	farpush ax
	setfuncargs 3
	li ax, String::Format^101
	farcall ax
	farsubsp 3
	push op
	push ax
	ptrstack 12
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 426
	li ax, 1
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 427
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 24
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::WriteInt$3: ; 3 args
	sourceline 432
	thisaddr 7464
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 433
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 434
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007664
	sourceline 436
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindLastKey$1
	call ax
	subi sp, 4
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 437
	push op
	ptrstack 8
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::InsertLine$1
	call ax
	subi sp, 4
	pop op
	not ax
	jzi label000000007664
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000007664: ; inside IniFile::WriteInt$3, ; referenced by 2 spots
	sourceline 440
	ptrstack 24
	memread4 ax
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, "%s=%d"
	farpush ax
	setfuncargs 3
	li ax, String::Format^101
	farcall ax
	farsubsp 3
	push op
	push ax
	ptrstack 12
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 441
	li ax, 1
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 442
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::WriteFloat$3: ; 3 args
	sourceline 447
	thisaddr 7757
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 448
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 449
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000007957
	sourceline 451
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindLastKey$1
	call ax
	subi sp, 4
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 452
	push op
	ptrstack 8
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::InsertLine$1
	call ax
	subi sp, 4
	pop op
	not ax
	jzi label000000007957
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000007957: ; inside IniFile::WriteFloat$3, ; referenced by 2 spots
	sourceline 455
	ptrstack 24
	memread4 ax
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, "%s=%f"
	farpush ax
	setfuncargs 3
	li ax, String::Format^101
	farcall ax
	farsubsp 3
	push op
	push ax
	ptrstack 12
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 456
	li ax, 1
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 457
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

IniFile::WriteBool$3: ; 3 args
	sourceline 462
	thisaddr 8050
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 12
	memread4 ax
	ptrinit ax
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 463
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindKey$2
	call ax
	subi sp, 8
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 464
	ptrstack 4
	memread4 ax
	push ax
	push op
	pop mar
	ptrassert 
	addi mar, 1000
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000008250
	sourceline 466
	push op
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::FindLastKey$1
	call ax
	subi sp, 4
	pop op
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 4
	memwrite4 ax
	sourceline 467
	push op
	ptrstack 8
	memread4 ax
	push ax
	push op
	pop mar
	mr ax, mar
	callobj ax
	li ax, IniFile::InsertLine$1
	call ax
	subi sp, 4
	pop op
	not ax
	jzi label000000008250
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
label000000008250: ; inside IniFile::WriteBool$3, ; referenced by 2 spots
	sourceline 470
	ptrstack 24
	memread4 ax
	farpush ax
	ptrstack 20
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, "%s=%d"
	farpush ax
	setfuncargs 3
	li ax, String::Format^101
	farcall ax
	farsubsp 3
	push op
	push ax
	ptrstack 12
	memread4 ax
	assertlte ax, 250
	mr dx, ax
	pop ax
	pop mar
	ptrassert 
	muli dx, 4
	add mar, dx
	push mar
	pop mar
	ptrset ax
	sourceline 471
	li ax, 1
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 
	sourceline 472
	li ax, 0
	ptrstack 20
	ptrzerond 
	ptrstack 16
	ptrzerond 
	subi sp, 8
	ret 

createSettings$0: ; 0 args
	sourceline 479
	thisaddr 8343
	sourceline 480
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 482
	li ax, "$APPDATADIR$/settings.ini"
	farpush ax
	setfuncargs 1
	li ax, File::Exists^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000008878
	sourceline 483
	li ax, 2
	farpush ax
	li ax, "$APPDATADIR$/settings.ini"
	farpush ax
	setfuncargs 2
	li ax, File::Open^2
	farcall ax
	farsubsp 2
	mr mar, sp
	ptrinit ax
	addi sp, 4
	sourceline 485
	push op
	li ax, "$APPDATADIR$/settings.ini"
	newstr ax
	push ax
	ptrstack 1016
	mr ax, mar
	callobj ax
	li ax, IniFile::Load$1
	call ax
	subi sp, 4
	pop op
	sourceline 488
	push op
	li ax, 1065520988
	push ax
	li ax, "versión"
	newstr ax
	push ax
	li ax, "versión"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteFloat$3
	call ax
	subi sp, 12
	pop op
	sourceline 491
	push op
	li ax, 100
	push ax
	li ax, "principal"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteInt$3
	call ax
	subi sp, 12
	pop op
	sourceline 492
	push op
	li ax, 50
	push ax
	li ax, "bgm"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteInt$3
	call ax
	subi sp, 12
	pop op
	sourceline 493
	push op
	li ax, 100
	push ax
	li ax, "sfx"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteInt$3
	call ax
	subi sp, 12
	pop op
	sourceline 494
	push op
	li ax, 100
	push ax
	li ax, "amb"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteInt$3
	call ax
	subi sp, 12
	pop op
	sourceline 495
	push op
	li ax, 40
	push ax
	li ax, "blup"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteInt$3
	call ax
	subi sp, 12
	pop op
	sourceline 500
	push op
	li ax, 0
	push ax
	li ax, "clickAndDrag"
	newstr ax
	push ax
	li ax, "gameplay"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteBool$3
	call ax
	subi sp, 12
	pop op
	sourceline 501
	push op
	li ax, 90
	push ax
	li ax, "turnSpeed"
	newstr ax
	push ax
	li ax, "gameplay"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::WriteInt$3
	call ax
	subi sp, 12
	pop op
	sourceline 504
	push op
	li ax, "$APPDATADIR$/settings.ini"
	newstr ax
	push ax
	ptrstack 1016
	mr ax, mar
	callobj ax
	li ax, IniFile::Save$1
	call ax
	subi sp, 4
	pop op
	sourceline 506
	ptrstack 4
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpne bx, ax
	mr ax, bx
	jzi label000000008847
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
	li ax, File::get_Error
	farcall ax
	pop op
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000008847: ; inside createSettings$0, ; referenced by 1 spots
	jzi label000000008870
	push op
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	callobj ax
	setfuncargs 0
	li ax, File::Close^0
	farcall ax
	pop op
label000000008870: ; inside createSettings$0, ; referenced by 1 spots
	sourceline 508
	ptrstack 4
	ptrzero 
	subi sp, 4
label000000008878: ; inside createSettings$0, ; referenced by 1 spots
	sourceline 510
	li ax, 0
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

__ControlScheme::setDefaultKeys$0: ; 0 args
	sourceline 512
	thisaddr 9886
	mr mar, sp
	memcpy 4, 0
	addi sp, 4
	sourceline 513
	li ax, 65
	li mar, @Controls
	memwrite4 ax
	sourceline 514
	li ax, 68
	li mar, @var000008
	memwrite4 ax
	sourceline 515
	li ax, 87
	li mar, @var000012
	memwrite4 ax
	sourceline 516
	li ax, 83
	li mar, @var000016
	memwrite4 ax
	sourceline 518
	li ax, 69
	li mar, @var000032
	memwrite4 ax
	sourceline 519
	li ax, 27
	li mar, @var000028
	memwrite4 ax
	sourceline 520
	li ax, 0
	subi sp, 4
	ret 

loadSettings$0: ; 0 args
	sourceline 522
	thisaddr 9968
	sourceline 523
	mr mar, sp
	zeromem 1004
	addi sp, 1004
	sourceline 525
	li ax, "$APPDATADIR$/settings.ini"
	farpush ax
	setfuncargs 1
	li ax, File::Exists^1
	farcall ax
	farsubsp 1
	not ax
	jzi label000000010007
	li ax, createSettings$0
	call ax
label000000010007: ; inside loadSettings$0, ; referenced by 1 spots
	sourceline 528
	push op
	li ax, "$APPDATADIR$/settings.ini"
	newstr ax
	push ax
	ptrstack 1012
	mr ax, mar
	callobj ax
	li ax, IniFile::Load$1
	call ax
	subi sp, 4
	pop op
	sourceline 531
	push op
	li ax, 100
	push ax
	li ax, "principal"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1020
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 532
	push op
	li ax, 50
	push ax
	li ax, "bgm"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1024
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 533
	push op
	li ax, 100
	push ax
	li ax, "sfx"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1028
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 534
	push op
	li ax, 100
	push ax
	li ax, "amb"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1032
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 535
	push op
	li ax, 40
	push ax
	li ax, "blup"
	newstr ax
	push ax
	li ax, "audio"
	newstr ax
	push ax
	ptrstack 1036
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 537
	ptrstack 20
	memread4 ax
	mr bx, ax
	li ax, 0
	farpush bx
	setfuncargs 1
	li ax, System::set_Volume
	farcall ax
	farsubsp 1
	sourceline 538
	li ax, 1680
	farpush ax
	ptrstack 16
	memread4 ax
	farpush ax
	li ax, 2
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 539
	li ax, 1680
	farpush ax
	ptrstack 8
	memread4 ax
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 540
	li ax, 1680
	farpush ax
	ptrstack 4
	memread4 ax
	farpush ax
	li ax, 4
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 541
	li ax, 1680
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	li ax, 3
	farpush ax
	setfuncargs 3
	li ax, Game::SetAudioTypeVolume^3
	farcall ax
	farsubsp 3
	sourceline 543
	ptrstack 20
	memread4 ax
	mr bx, ax
	li mar, slMaster
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 544
	ptrstack 8
	memread4 ax
	mr bx, ax
	li mar, slAMB
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 545
	ptrstack 16
	memread4 ax
	mr bx, ax
	li mar, slBGM
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 546
	ptrstack 12
	memread4 ax
	mr bx, ax
	li mar, slSFX
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 547
	ptrstack 4
	memread4 ax
	mr bx, ax
	li mar, slBloops
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 550
	push op
	li ax, 0
	push ax
	li ax, "tintRed"
	newstr ax
	push ax
	li ax, "visual"
	newstr ax
	push ax
	ptrstack 1040
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 551
	push op
	li ax, 0
	push ax
	li ax, "tintGreen"
	newstr ax
	push ax
	li ax, "visual"
	newstr ax
	push ax
	ptrstack 1044
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 552
	push op
	li ax, 0
	push ax
	li ax, "tintBlue"
	newstr ax
	push ax
	li ax, "visual"
	newstr ax
	push ax
	ptrstack 1048
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadInt$3
	call ax
	subi sp, 12
	pop op
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 554
	ptrstack 4
	memread4 ax
	farpush ax
	ptrstack 8
	memread4 ax
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, TintScreen
	farcall ax
	farsubsp 3
	sourceline 555
	ptrstack 12
	memread4 ax
	mr bx, ax
	li mar, slTintRed
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 556
	ptrstack 8
	memread4 ax
	mr bx, ax
	li mar, slTintGreen
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 557
	ptrstack 4
	memread4 ax
	mr bx, ax
	li mar, slTintBlue
	mr ax, mar
	push op
	callobj ax
	farpush bx
	setfuncargs 1
	li ax, Slider::set_Value
	farcall ax
	farsubsp 1
	pop op
	sourceline 561
	push op
	li ax, 1065520988
	push ax
	li ax, "versión"
	newstr ax
	push ax
	li ax, "versión"
	newstr ax
	push ax
	ptrstack 1052
	mr ax, mar
	callobj ax
	li ax, IniFile::ReadFloat$3
	call ax
	subi sp, 12
	pop op
	li mar, versionNumber
	memwrite4 ax
	sourceline 562
	li ax, 0
	ptrstack 1036
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	addi mar, 4
	ptrzero 
	subi sp, 1036
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
"__NEWSCRIPTSTART_IniFile.asc"
""
"]"
";"
"="
""
"[%s]"
";"
"="
"]"
";"
"="
"="
"="
"="
"="
"1"
"true"
"on"
"yes"
"%s=%s"
"%s=%d"
"%s=%f"
"%s=%d"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"version"
"version"
"audio"
"master"
"audio"
"bgm"
"audio"
"sfx"
"audio"
"amb"
"audio"
"bloop"
"gameplay"
"clickAndDrag"
"gameplay"
"turnSpeed"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"$APPDATADIR$/settings.ini"
"audio"
"master"
"audio"
"bgm"
"audio"
"sfx"
"audio"
"amb"
"audio"
"bloop"
"visual"
"tintRed"
"visual"
"tintGreen"
"visual"
"tintBlue"
"version"
"version"
.imports
000000000000"String::Format^101"
000000000001"String::IsNullOrEmpty^1"
000000000002""
000000000003""
000000000004""
000000000005""
000000000006"String::IndexOf^1"
000000000007"String::LowerCase^0"
000000000008""
000000000009"String::Substring^2"
000000000010"String::Truncate^1"
000000000011""
000000000012""
000000000013""
000000000014""
000000000015""
000000000016"String::get_AsFloat"
000000000017"String::get_AsInt"
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
000000000171"File::Exists^1"
000000000172"File::Open^2"
000000000173"File::Close^0"
000000000174""
000000000175""
000000000176""
000000000177"File::ReadRawLineBack^0"
000000000178""
000000000179""
000000000180""
000000000181"File::WriteRawLine^1"
000000000182""
000000000183"File::get_EOF"
000000000184"File::get_Error"
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
000000000252"TintScreen"
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
000000000368"Slider::get_Value"
000000000369"Slider::set_Value"
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
000000000923""
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
000000001063"slMaster"
000000001064"slBGM"
000000001065"slAMB"
000000001066"slSFX"
000000001067""
000000001068"slBloops"
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
000000001082"slTintRed"
000000001083"slTintGreen"
000000001084"slTintBlue"
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
000000001169"versionNumber"
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
.exports
000000000000"Controls"
2:000000000004
000000000001"String::Trim$0"
1:000000000000
000000000002"IniFile::InsertLine$1"
1:000000000466
000000000003"IniFile::DeleteLine$1"
1:000000000743
000000000004"IniFile::FindSection$1"
1:000000001026
000000000005"IniFile::FindKey$2"
1:000000001475
000000000006"IniFile::FindLastKey$1"
1:000000002104
000000000007"IniFile::Clear$0"
1:000000002818
000000000008"IniFile::Load$1"
1:000000002917
000000000009"IniFile::Save$1"
1:000000003273
000000000010"IniFile::ListSections$2"
1:000000003571
000000000011"IniFile::ListKeys$3"
1:000000003996
000000000012"IniFile::SectionExists$1"
1:000000004588
000000000013"IniFile::DeleteSection$1"
1:000000004679
000000000014"IniFile::KeyExists$2"
1:000000005048
000000000015"IniFile::DeleteKey$2"
1:000000005161
000000000016"IniFile::Read$3"
1:000000005307
000000000017"IniFile::ReadInt$3"
1:000000005742
000000000018"IniFile::ReadFloat$3"
1:000000006171
000000000019"IniFile::ReadBool$3"
1:000000006600
000000000020"IniFile::Write$3"
1:000000007152
000000000021"IniFile::WriteInt$3"
1:000000007464
000000000022"IniFile::WriteFloat$3"
1:000000007757
000000000023"IniFile::WriteBool$3"
1:000000008050
000000000024"createSettings$0"
1:000000008343
000000000025"__ControlScheme::setDefaultKeys$0"
1:000000009886
000000000026"loadSettings$0"
1:000000009968
.sections
"IniFile.asc" = 0

