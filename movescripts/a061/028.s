.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_28", 0

a061_28:
    loop 2
    playsepan 1927, 117
    callfunction 4, 6, 65535, 66445, 10, 2, 0, 32, "NaN", "NaN", "NaN", "NaN"
    waitstate
    doloop
    end

.close
