.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_289", 0

a001_289:
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x1E
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x7
    jumptosubseq 267

.close
