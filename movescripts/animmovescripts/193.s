.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_193", 0

a010_193:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 9
    loadpalette 0, 9, 1
    loadcell 0, 9
    loadcellanm 0, 9
    addsomething 0, 8, 9, 9, 9, 9, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 6
    wait 2
    playsepan 1841, 117
    wait 10
    doloop
    wait 2
    playsepan 1930, 117
    waitstate
    freeresources 0
    end

.close
