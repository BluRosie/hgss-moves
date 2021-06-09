.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_220", 0

a001_220:
    if IF_EQUAL, VAR_FLING_SUBSCRIPT, 0x0, _0050
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x2F, 0x0, _0050
    checknostatus BATTLER_DEFENDER, _0050
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_FLING_TEMP
    gotosubscript2 51
_0050:
    endscript

.close
