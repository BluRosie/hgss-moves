.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a000\a000_463", 0

a000_463:
    preparemessage 0x4DF, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    jumptocurmoveeffectscript

.close
