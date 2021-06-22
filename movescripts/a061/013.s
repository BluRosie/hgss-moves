.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_13", 0

a061_13:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 0
    loadspritemaybe 2, 0, 2, 1
    callfunction 81, 2, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2058, -117
    waitstate
    resetsprite 0
    resetsprite 1
    resetsprite 2
    unloadspriteresource
    end

.close
