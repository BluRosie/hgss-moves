.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_067", 0

a001_067:
    trymimic _0044
    gotosubscript 76
    printmessage 0x344, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript
_0044:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
