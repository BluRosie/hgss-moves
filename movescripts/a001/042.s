.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_042", 0

a001_042:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x338, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
