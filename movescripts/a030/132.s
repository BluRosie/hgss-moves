.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_132", 0

a030_132:
    changehprecoverybasedonweather
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0xF
    changevar VAR_OP_SET, VAR_STATUS1, 0x20000061
    changevar VAR_OP_SETMASK, VAR_60, 0x100
    endscript

.close
