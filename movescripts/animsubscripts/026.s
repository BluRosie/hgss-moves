.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_26", 0

a061_26:
    initspriteresource
    loadspriteresource 0
    playsepan 1984, -117
    loadspritemaybe 0, 0, 0, 0
    callfunction 38, 6, 1, 16, 0, 0, 16, 8, "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    end

.close
