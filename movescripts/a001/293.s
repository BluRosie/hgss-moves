.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_293", 0

a001_293:
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _0188
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_SPECIES, 0x1EC, _0188
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_FORM, 0x0, _0188
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x1000000, _0188
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x20, _0188
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x62, 0x0
    changevar VAR_OP_SET, VAR_43, 0x0
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_PID, 0x1, _00C8
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_43, 0x18
    goto _00FC
_00C8:
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_43, 0x19
    if IF_NOTEQUAL, VAR_43, 0x0, _00FC
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_43, 0x18
_00FC:
    changevar VAR_OP_SETMASK, VAR_60, 0x8000000
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x1A, VAR_09
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_43, 0x6
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x1B, VAR_09
    getdatafrompersonalnarc SPECIES_SHAYMIN, VAR_43, 0x7
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x1C, VAR_09
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_DEFENDER
    gotosubscript 262
    refreshmondata BATTLER_DEFENDER
_0188:
    endscript

.close
