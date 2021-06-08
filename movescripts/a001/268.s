.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_268", 0

a001_268:
    wait 0xF
    playse BATTLER_ATTACKER, 0x5EC
    printmessage 0x35A, 0x33, 0x1, 0x1, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    recoverstatus BATTLER_ATTACKER
    if IF_EQUAL, VAR_22, 0x0, _00D4
    if IF_EQUAL, VAR_22, 0x1, _0104
    if IF_EQUAL, VAR_22, 0x2, _0120
    if IF_EQUAL, VAR_22, 0x3, _013C
    if IF_EQUAL, VAR_22, 0x4, _0158
    if IF_EQUAL, VAR_22, 0x5, _0174
    printmessage 0x380, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_00D4:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x7
    printmessage 0x37A, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _01A4
_0104:
    printmessage 0x36B, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0120:
    printmessage 0x374, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_013C:
    printmessage 0x371, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0158:
    printmessage 0x36E, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0174:
    printmessage 0x377, 0xF, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    goto _0190
_0190:
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, VAR_BATTLE_STATUS, 0x0
_01A4:
    waitmessage
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x1E
    endscript

.close
