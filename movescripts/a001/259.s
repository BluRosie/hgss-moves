.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_259", 0

a001_259:
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x1000
    changevar VAR_OP_SETMASK, VAR_06, 0x200
    endscript

.close
