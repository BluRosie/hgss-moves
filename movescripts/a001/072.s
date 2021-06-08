.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_072", 0

a001_072:
    printmessage 0x171, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
