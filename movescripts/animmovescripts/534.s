.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_534", 0

a010_534:
    loadparticlefromspa 0, 486
    waitparticle

    addparticle 0, 2, 3
    addparticle 0, 1, 3
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    wait 10

    addparticle 0, 1, 3
    addparticle 0, 1, 3
    wait 10

    addparticle 0, 2, 3
    addparticle 0, 0, 3
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
