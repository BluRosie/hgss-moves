.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a000\a000_091", 0

a000_091:
    preparemessage 0xE2, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    jumptocurmoveeffectscript

.close
