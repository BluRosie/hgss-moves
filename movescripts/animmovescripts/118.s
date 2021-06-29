.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_118", 0

a010_118:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 3
    loadpalette 0, 3, 1
    loadcell 0, 3
    loadcellanm 0, 3
    playsepan 1991, -117
    addsomething 0, 4, 3, 3, 3, 3, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    repeatse 1928, -117, 8, 3
    waitstate
    wait 8
    freeresources 0
    end

.close
