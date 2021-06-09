.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_260", 0

a001_260:
    checkchatteractivation _0010
    gotosubscript 37
_0010:
    endscript

.close
