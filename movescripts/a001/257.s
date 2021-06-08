.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_257", 0

a001_257:
    wait 0xF
    printmessage 0x33B, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, 0xF
    changevar VAR_OP_SET, VAR_05, 0x7
    gotosubscript 18
    endscript

.close
