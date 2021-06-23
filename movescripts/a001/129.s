.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_129", 0

a001_129:
    printattackmessage
    waitmessage
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 0x0, _0038
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_SPATK, 0x0, _0138
_0038:
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    checknostatus BATTLER_DEFENDER, _00FC
    changevar VAR_OP_SETMASK, VAR_06, 0x4001
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_DEFENDER
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 0x0, _00B0
    changevar VAR_OP_SET, VAR_34, 0x2E
    gotosubscript 12
_00B0:
    changevar VAR_OP_SETMASK, VAR_06, 0x200000
    changevar VAR_OP_SET, VAR_34, 0x31
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript
_00FC:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x25F, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript
_0138:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
