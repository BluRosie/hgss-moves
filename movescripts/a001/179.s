.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_179", 0

a001_179:
    printattackmessage
    waitmessage
    wait 0xF
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x49, 0x0, _0060
    printmessage 0x290, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, ABILITY_STENCH, 0x1
    endscript
_0060:
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
