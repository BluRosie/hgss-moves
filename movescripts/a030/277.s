.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_277", 0

a030_277:
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  ADD_STATUS_HONE_CLAWS | ADD_STATUS_ATTACK
    endscript

.close