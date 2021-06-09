.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_190", 0

a001_190:
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, 0x34, 0x0
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x8000000
    printmessage 0x2CD, 0x29, 0xFF, 0x15, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    endscript

.close
