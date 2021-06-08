.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_209", 0

a001_209:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x255, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue VAR_OP_SETMASK, BATTLER_xFF, VAR_MOVE_BACKUP, 0x100000
    gotosubscript 290
    endscript

.close
