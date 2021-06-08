.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_295", 0

a001_295:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x1B1
    seteffectprimary BATTLER_xFF
    waitmessage
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    printmessage 0x4F3, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x50000
    endscript

.close
