.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_155", 0

a001_155:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x2F, 0x0, _0054
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x34, 0x7
    printmessage 0x12E, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_DEFENDER, 0x0
    wait 0x1E
_0054:
    endscript

.close
