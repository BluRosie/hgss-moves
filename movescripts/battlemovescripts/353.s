.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a000\a000_353", 0

a000_353:
    preparemessage 0x1DE, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    jumptocurmoveeffectscript

.close
