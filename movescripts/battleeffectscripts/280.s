.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_280", 0

a030_280:
    ifmonstat2 IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x8, poison
    ifmonstat2 IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x80, poison
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    goto _end

poison:
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14

_end:
    critcalc
    damagecalc
    endscript

.close