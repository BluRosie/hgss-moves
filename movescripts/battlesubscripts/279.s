.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_279", 0

a001_279:
    changevar2 VAR_OP_GET_RESULT, VAR_ATTACKER, VAR_ATTACKER_TEMP2
    changevar2 VAR_OP_GET_RESULT, VAR_DEFENDER, VAR_DEFENDER_TEMP2
    endscript

.close
