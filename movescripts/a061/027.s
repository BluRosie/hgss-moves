.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_27", 0

a061_27:
    loop 2
    playsepan 1821, 117
    callfunction 57, 4, 4, 0, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    callfunction 57, 4, 4, 0, -8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4
    doloop
    end

.close
