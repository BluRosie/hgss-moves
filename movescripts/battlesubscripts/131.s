.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_131", 0

a001_131:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x200
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x3F, 0x2
    printmessage 0x1E7, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_ATTACKER
    changevar VAR_OP_SET, VAR_34, 0x13
    gotosubscript 12
    endscript

.close
