.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_142", 0

a001_142:
    checknostatus BATTLER_DEFENDER, _0084
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _0084
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ITEM, 0x70, _0084
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_86, 0x0, _0084
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_85, 0x0, _0084
    tryknockitemoff _0084
    printpreparedmessage
    waitmessage
    wait 0x1E
_0084:
    endscript

.close
