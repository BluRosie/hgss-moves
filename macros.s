
.macro move,movenum,battleeffect,pss,basepower,type,accuracy,pp,effectchance,target,priority,flags,appeal,contesttype

	.if movenum < 10
		.create "a011/move_00" + tostring(movenum),0
	.elseif movenum < 100
		.create "a011/move_0" + tostring(movenum),0
	.else
		.create "a011/move_" + tostring(movenum),0
	.endif
	.halfword battleeffect
	.byte pss
	.byte basepower
	.byte type
	.byte accuracy
	.byte pp
	.byte effectchance
	.halfword target
	.byte priority
	.byte flags
	.byte appeal
	.byte contesttype
	.halfword 0
	
	.close
	
.endmacro
