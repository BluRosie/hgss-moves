.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_252", 0

a001_252:
    setstatus2effect BATTLER_PLAYER, 0x14
    waitmessage
    wait 0xF
    printmessage 0x2BD, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, 0x80FF
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x80
    endscript

.close
