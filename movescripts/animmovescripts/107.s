.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_107", 0

a010_107:
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 0
    loadspritemaybe 0, 0, 2, 0
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    callfunction 22, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1984, -117, 18, 3
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    cmd53 0
    resetsprite 4
    end

.close
