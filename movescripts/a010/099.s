.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_099", 0

a010_099:
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
    loadparticle 0, 129
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1846, -117
    waitse 1827, 117, 50
    callfunction 34, 6, 2, 0, 2, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 52, 3, 3, 24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 52, 3, 3, -24, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
