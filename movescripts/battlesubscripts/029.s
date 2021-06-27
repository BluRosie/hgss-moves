.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_029", 0

a001_029:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x34, 0x20
    printmessage 0x72, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    endscript

.close
