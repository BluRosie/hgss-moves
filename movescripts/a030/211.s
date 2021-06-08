.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_211", 0

a030_211:
    changevar VAR_OP_SET, VAR_STATUS1, 0x4000003A
    endscript

.close
