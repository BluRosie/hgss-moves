.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_044", 0

a001_044:
    random 1, 2
    changevar VAR_OP_LSH, VAR_09, 0xA
    changevartomonvalue2 VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, VAR_09
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, VAR_CURRENT_MOVE
    endscript

.close
