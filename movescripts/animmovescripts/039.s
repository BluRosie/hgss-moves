.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_039", 0

a010_039:
    loop 2
    playsepan 1844, -117
    callfunction 60, 3, 2, 1, 12, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    doloop
    end

.close
