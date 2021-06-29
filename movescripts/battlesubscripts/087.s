.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_087", 0

a001_087:
    willprotectwork _001C
    gotosubscript 76
    gotosubscript 57
    endscript
_001C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
