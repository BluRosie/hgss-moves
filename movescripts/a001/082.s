.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_082", 0

a001_082:
    printmessage 0x184, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x2000000
    endscript

.close
