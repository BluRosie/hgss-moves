.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_066", 0

a001_066:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x800000
    endscript

.close
