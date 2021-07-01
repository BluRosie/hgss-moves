.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_474", 0

a010_474:
    loadparticlefromspa 0, 489
    waitparticle

    addparticle 0, 0, 3
    addparticle 0, 0, 4
	wait 33
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN" // flash screen black

    waitparticle
    unloadparticle 0
    waitstate
    end
    

.close
