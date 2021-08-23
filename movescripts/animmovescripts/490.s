.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_490", 0

red equ 0
green equ 0
blue equ 31

a010_490:
    loadparticlefromspa 0, 503 // new soak spa
    waitparticle

// shower
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    wait 30

// hit
    addparticle 0, 3, 4
    callfunction 36, 5, 4, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake mon
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN" // shades target mon rgb555 color
    waitparticle

    unloadparticle 0
    waitstate
    end


.close
