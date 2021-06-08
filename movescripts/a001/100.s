.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_100", 0

a001_100:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, VAR_MOVE_BACKUP, 0x20000000
    printmessage 0x1B0, 0x9, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
