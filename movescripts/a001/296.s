.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_296", 0

a001_296:
    changevar VAR_OP_SETMASK, VAR_60, 0x8000000
    changevartomonvalue VAR_OP_SET, BATTLER_x15, ABILITY_LEVITATE, 0x0
    changevar VAR_OP_SET, VAR_43, 0x0
    ifmonstat IF_MASK, BATTLER_x15, 0x33, 0x1, _0064
    getdatafrompersonalnarc SPECIES_GIRATINA, VAR_43, 0x18
    goto _0074
_0064:
    getdatafrompersonalnarc SPECIES_GIRATINA, VAR_43, 0x19
_0074:
    changevartomonvalue2 VAR_OP_SET, BATTLER_x15, 0x1A, VAR_09
    gotosubscript 262
    refreshmondata BATTLER_x15
    endscript

.close
