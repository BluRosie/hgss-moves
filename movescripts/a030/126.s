.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_126", 0

a030_126:
    changevar VAR_OP_SETMASK, VAR_06, 0x8
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, 0x3B, 0x80, _0048
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
_0048:
    changevar VAR_OP_SET, VAR_STATUS1, 0xA0000062
    magnitudedamagecalc
    critcalc
    damagecalc
    endscript

.close
