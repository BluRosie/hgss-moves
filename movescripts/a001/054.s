.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_054", 0

a001_054:
    setmist _0020
    preparemessage 0x10F, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    gotosubscript 53
_0020:
    endscript

.close
