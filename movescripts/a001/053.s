.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_053", 0

a001_053:
    gotosubscript 76
    printpreparedmessage
    waitmessage
    wait 0x1E
    endscript

.close
