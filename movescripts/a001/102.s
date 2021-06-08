.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_102", 0

a001_102:
    printmessage 0x1B7, 0x11, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    ifmonstat IF_MASK, BATTLER_xFF, 0x3B, 0x20, _0040
    gotosubscript 2
_0040:
    endscript

.close
