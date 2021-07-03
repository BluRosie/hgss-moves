.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_472", 0

a010_472:
    loadparticlefromspa 0, 487
    waitparticle

    addparticle 0, 2, 3

    addparticle 0, 1, 3
    waitparticle

    addparticle 0, 0, 3
    playsepan 1990, -117
    wait 20

    unloadparticle 0
    waitstate
    end
    

.close
