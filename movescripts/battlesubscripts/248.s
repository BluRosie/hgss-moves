.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_248", 0

a001_248:
    checkeffectactivation _0010
    gotosubscript 27
_0010:
    checkeffectactivation _0020
    gotosubscript 14
_0020:
    endscript

.close
