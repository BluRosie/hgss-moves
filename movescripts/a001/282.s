.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_282", 0

a001_282:
    printmessage 0x14F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x1000
    printmessage 0x4D2, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
