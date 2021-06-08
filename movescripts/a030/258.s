.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_258", 0

a030_258:
    changevar VAR_OP_SET, VAR_STATUS1, 0xA0000083
    endscript

.close
