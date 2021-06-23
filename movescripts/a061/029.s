.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_29", 0

a061_29:
    initresources 0, 7, 2, 2, 2, 2, 0, 0
    loadresources 0, 11
    loadpalette 0, 11, 1
    loadcell 0, 11
    loadcellanm 0, 11
    repeatse 2027, 117, 10, 2
    addsomething 0, 10, 11, 11, 11, 11, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    waitstate
    freeresources 0
    end

.close
