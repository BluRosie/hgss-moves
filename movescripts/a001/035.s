.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_035", 0

a001_035:
    gotosubscript 76
    setsomeflag BATTLER_ATTACKER
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x200
    changevar VAR_OP_SET, VAR_DAMAGE_BACKUP, 0x0
    endscript

.close
