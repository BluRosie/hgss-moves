.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_064", 0

a001_064:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x400000
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, 0x18
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x57, VAR_TURNS
    endscript

.close
