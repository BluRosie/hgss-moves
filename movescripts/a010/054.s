.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_054", 0

a010_054:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 85
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1985, -117, 4, 3
    addparticle 0, 0, 19
    callfunction 34, 6, 2, 0, 1, 32767, 10, 60, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32767, 10, 60, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close