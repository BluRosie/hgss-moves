.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_116", 0

a001_116:
    printmessage 0x1CB, 0x1F, 0x1, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
