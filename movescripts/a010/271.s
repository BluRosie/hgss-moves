.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_271", 0

a010_271:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1864, -117
    initresources 0, 2, 1, 1, 1, 1, 0, 0
    loadresources 0, 24
    loadpalette 0, 23, 1
    loadcell 0, 24
    loadcellanm 0, 24
    addsomething 0, 3, 24, 23, 24, 24, 0, 0, 1, 2, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 1983, 0, 55
    waitse 1983, 0, 70
    waitse 1983, 0, 83
    waitse 1983, 0, 97
    waitse 1983, 0, 105
    waitstate
    freeresources 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
