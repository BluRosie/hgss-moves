.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_173", 0

a001_173:
    checknostatus BATTLER_DEFENDER, _0074
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x50, 0x0, _0074
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x2000000
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x50, 0x5
    printmessage 0x41B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0074:
    printattackmessage
    waitmessage
    wait 0xF
    printmessage 0x4D3, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
