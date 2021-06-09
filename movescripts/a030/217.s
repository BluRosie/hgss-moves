.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_217", 0

a030_217:
    checknostatus BATTLER_DEFENDER, _005C
    ifmonstat IF_MASK, BATTLER_DEFENDER, 0x34, 0x7, _003C
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    goto _005C
_003C:
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000075
_005C:
    critcalc
    damagecalc
    endscript

.close
