.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_284", 0

a030_284:
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  ADD_STATUS_SOAK | ADD_STATUS_DEFENCE
    endscript

.close