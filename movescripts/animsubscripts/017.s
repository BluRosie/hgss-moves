.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_17", 0

a061_17:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 31
    loadpalette 0, 31, 1
    loadcell 0, 31
    loadcellanm 0, 31
    playsepan 1983, -117
    addsomething 0, 28, 31, 31, 31, 31, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
