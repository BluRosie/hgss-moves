.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_288", 0

a001_288:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x10D
    printmessage 0x4E9, 0xA, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
