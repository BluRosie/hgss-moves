.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_207", 0

a001_207:
    gotosubscript 198
    printmessage 0x252, 0x30, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_06, 0x4001
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, 0x14
    changevar VAR_OP_SET, VAR_05, 0x5
    gotosubscript 37
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4001
    endscript

.close
