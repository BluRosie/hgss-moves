.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_001", 0

a001_001:
    if IF_EQUAL, VAR_05, 0x1, _001C
    gotosubscript 76
_001C:
    endscript

.close
