.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_288", 0

a030_288:
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  ADD_STATUS_SHIFT_GEAR | ADD_STATUS_ATTACKER
    endscript

.close