.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_208", 0

a001_208:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    changevar VAR_OP_SET, VAR_34, 0xE
    changevar2 VAR_OP_ADD, VAR_34, 0x16
    changevar VAR_OP_SET, VAR_05, 0x5
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, 0x14
    gotosubscript 12
    gotosubscript 290
    endscript

.close
