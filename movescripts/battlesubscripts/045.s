.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_045", 0

a001_045:
    tryconversion _0034
    gotosubscript 76
    printmessage 0xB2, 0xD, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0034:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
