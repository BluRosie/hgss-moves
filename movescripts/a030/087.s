.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_087", 0

a030_087:
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2B, VAR_DAMAGE
    changevar VAR_OP_MUL, VAR_DAMAGE, 0xFFFFFFFF
    endscript

.close
