.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_279", 0

a001_279:
    changevar2 VAR_OP_GET_RESULT, VAR_ATTACKER, 0x3F
    changevar2 VAR_OP_GET_RESULT, VAR_DEFENDER, 0x40
    endscript

.close
