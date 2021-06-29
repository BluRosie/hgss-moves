.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_274", 0

a010_274:
    initresources 0, 12, 1, 1, 1, 1, 0, 0
    loadresources 0, 25
    loadpalette 0, 24, 1
    loadcell 0, 25
    loadcellanm 0, 25
    addsomething 0, 21, 25, 24, 25, 25, 0, 0, 1, 12, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1908, 0, 10, 4
    waitstate
    freeresources 0
    end

.close
