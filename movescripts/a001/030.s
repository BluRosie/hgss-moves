.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_030", 0

a001_030:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, VAR_BATTLE_STATUS, 0x20
    printmessage 0x75, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x1E
    endscript

.close
