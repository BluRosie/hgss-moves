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
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x1A, 0x79, _0084
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x37, 0x70, _0084
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x56, 0x0, _0084
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x55, 0x0, _0084
    tryknockitemoff _0084
    printpreparedmessage
    waitmessage
    wait 0x1E
_0084:
    endscript

.close
