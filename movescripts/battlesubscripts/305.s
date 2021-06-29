.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_305", 0

a001_305:
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    //spe down
    changevar VAR_OP_SET, VAR_34, SPEED_DOWN
    gotosubscript 12
    //def down
    changevar VAR_OP_SET, VAR_34, DEFENSE_DOWN
    gotosubscript 12
    //sp def down
    changevar VAR_OP_SET, VAR_34, SPDEF_DOWN
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript

.close