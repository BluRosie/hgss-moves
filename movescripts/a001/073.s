.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_073", 0

a001_073:
    tryencore _002C
    gotosubscript 76
    printmessage 0x174, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_002C:
    endscript

.close
