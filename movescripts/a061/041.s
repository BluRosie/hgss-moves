.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_41", 0

a061_41:
    callfunction 77, 5, 1, 2, 20, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1792, -117
    wait 1
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
