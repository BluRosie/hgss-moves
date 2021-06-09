.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_112", 0

a001_112:
    if IF_MASK, VAR_10, 0x1FD849, _003C
    printattackmessage
    waitmessage
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x50, 0x0, _0040
    gotosubscript 111
_003C:
    endscript
_0040:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x179
    printmessage 0x41E, 0xA, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
