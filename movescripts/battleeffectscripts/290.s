.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_290", 0

a030_290:
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  ADD_STATUS_SHELL_SMASH | ADD_STATUS_ATTACK
    endscript

.close