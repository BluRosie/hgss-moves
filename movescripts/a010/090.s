.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_090", 0

a010_090:
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
    loadparticle 0, 121
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    cmd43
    cmd0C 7, 1
    cmd0C 4, 0
    changebg 53, 0x800001
    waitforchangebg
    playsepan 1975, 0
    callfunction 36, 5, 4, 0, 1, 30, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 8, 0, 0, 31, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    cmd43
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 53, 0x1000001
    waitforchangebg
    end

.close