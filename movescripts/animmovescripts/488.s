.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_488", 0

a010_488:
    loadparticlefromspa 0, 501
    waitparticle
    loadparticlefromspa 1, 271
    waitparticle

// rings
//    addparticle 0, 1, 3
//    addparticle 0, 0, 3
//    addparticle 0, 2, 3
    addparticle 1, 1, 3
    wait 12

// air hits
    addparticle 0, 3, 4

    wait 4
    unloadparticle 1
    waitparticle

    unloadparticle 0
    //unloadparticle 1
    waitstate
    end
    

.close
