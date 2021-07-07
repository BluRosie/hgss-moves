.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_479", 0

red equ 239 / 8
green equ 49 / 8
blue equ 57 / 8

a010_479:
    loadparticlefromspa 0, 493
    waitparticle

    addparticle 0, 2, 3
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    wait 64
    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN"
    wait 48

    unloadparticle 0
    waitstate
    end
    

.close
