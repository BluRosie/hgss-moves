.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_167", 0

a001_167:
    if IF_MASK, VAR_10, 0x10001, _00A8
    checknostatus BATTLER_DEFENDER, _00A8
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x36, _00A8
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _00A8
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ITEM, 0x70, _00A8
    gotosubscript 76
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x1A, 0xF
    printmessage 0x3FD, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_00A8:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
