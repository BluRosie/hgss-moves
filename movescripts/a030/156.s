.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_156", 0

a030_156:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x40000000
    changevar VAR_OP_SET, VAR_STATUS1, 0x40000010
    endscript

.close
