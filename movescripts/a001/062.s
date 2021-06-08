.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_062", 0

a001_062:
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ADDL_EFFECT, VAR_MOVE_BACKUP, 0x100000
    printmessage 0x114, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
