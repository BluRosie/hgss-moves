.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_187", 0

a001_187:
    wait 0xF
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER2, 0x1A, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_xFF, 0x1A, VAR_09
    printmessage 0x2A7, 0x20, 0xFF, 0xF, 0xF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
