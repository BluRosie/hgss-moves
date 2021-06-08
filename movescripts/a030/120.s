.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_120", 0

a030_120:
    changevar VAR_OP_SET, VAR_STATUS1, 0x8000005F
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0xF
    endscript

.close
