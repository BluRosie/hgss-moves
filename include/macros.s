
.macro move,movenum

	.if movenum < 10
		.create "a011/move_00" + tostring(movenum),0
	.elseif movenum < 100
		.create "a011/move_0" + tostring(movenum),0
	.else
		.create "a011/move_" + tostring(movenum),0
	.endif
	
.endmacro

.macro battleeffect,num
	.halfword num
.endmacro

.macro pss,num
	.byte num
.endmacro

.macro basepower,num
	.byte num
.endmacro

.macro type,num
	.byte num
.endmacro

.macro accuracy,num
	.byte num
.endmacro

.macro pp,num
	.byte num
.endmacro

.macro effectchance,num
	.byte num
.endmacro

.macro target,num
	.halfword num
.endmacro

.macro priority,num
	.byte num
.endmacro

.macro flags,num
	.byte num
.endmacro

.macro appeal,num
	.byte num
.endmacro

.macro contesttype,num
	.byte num
.endmacro

.macro terminatedata
	.halfword 0
	
	.close
.endmacro
