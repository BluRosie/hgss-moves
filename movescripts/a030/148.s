.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_148", 0

a030_148:
    tryfuturesight _002C
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    changevar VAR_OP_SETMASK, VAR_06, 0x8841C
    endscript
_002C:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript 75
    endscript

.close
