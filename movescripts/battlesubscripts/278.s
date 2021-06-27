.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_278", 0

a001_278:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_85, 0x1, _005C
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_86, 0x0, _0100
    if IF_EQUAL, VAR_69, 0x1, _00A0
    setstatus2effect BATTLER_ATTACKER, 0xA
    waitmessage
    goto _00A0
_005C:
    setstatus2effect BATTLER_ATTACKER, 0xA
    waitmessage
    if IF_EQUAL, VAR_69, 0x1, _00A0
    printmessage 0x4E6, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00A0:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_86, 0x0, _00CC
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x56, 0x0
_00CC:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_85, 0x0, _0100
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x55, 0x0
    removeitem BATTLER_ATTACKER
_0100:
    endscript

.close
