.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_164", 0

a001_164:
    changevar VAR_OP_SET, VAR_09, 0x5000
    changevar2 VAR_OP_SETMASK, VAR_SIDE_EFFECT_PLAYER, 0x9
    printmessage 0x4D9, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
