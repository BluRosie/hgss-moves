.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_199", 0

a010_199:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 10
    loadpalette 0, 10, 1
    loadcell 0, 10
    loadcellanm 0, 10
    addsomething 0, 9, 10, 10, 10, 10, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    loop 4
    playsepan 1801, 117
    wait 8
    doloop
    playsepan 1840, 117
    waitstate
    freeresources 0
    end

.close
