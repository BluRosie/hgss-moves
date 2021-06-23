.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_134", 0

a001_134:
    if IF_MASK, VAR_10, 0x10001, _01DC
    checknostatus BATTLER_DEFENDER, _01DC
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ABILITY, 0x79, _01DC
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ABILITY, 0x79, _01DC
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0x70, _01DC
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ITEM, 0x70, _01DC
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_86, 0x0, _01DC
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_85, 0x0, _01DC
    trytrick _01DC, _01A4
    gotosubscript 76
    printmessage 0x1FE, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x37, VAR_43
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x37, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x37, VAR_43
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0x0, _0168
    printmessage 0x201, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0168:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_ITEM, 0x0, _01A0
    printmessage 0x201, 0xF, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_01A0:
    endscript
_01A4:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_01DC:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
