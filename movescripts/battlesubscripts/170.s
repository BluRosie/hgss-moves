.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_170", 0

a001_170:
    gotosubscript 147
    if IF_NOTMASK, VAR_06, 0x400000, _0024
    gotosubscript 25
_0024:
    endscript

.close
