.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_207", 0

a010_207:
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 11
    loadpalette 0, 11, 1
    loadcell 0, 11
    loadcellanm 0, 11
    callfunction 31, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2029, -117
    wait 30
    waitstate
    addsomething 0, 10, 11, 11, 11, 11, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 2027, 117
    wait 8
    playsepan 2027, 117
    waitstate
    freeresources 0
    end

.close
