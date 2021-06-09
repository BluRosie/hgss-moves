.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_092", 0

a001_092:
    ifmonstat IF_MASK, BATTLER_DEFENDER, 0x3B, 0x200400C0, _0060
    ifmonstat IF_MASK, BATTLER_DEFENDER, 0x35, 0x200000, _0060
    gotosubscript 76
    transform
    printmessage 0x159, 0xE, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0060:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
