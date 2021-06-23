.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_471", 0

a010_471:
    loadparticle_drop 0, 486
    wait 10

    addparticle 0, 2, emitter_attack_pos
    addparticle 0, 0, emitter_attack_pos
    waitparticle

    addparticle 0, 1, emitter_attack_pos
    addparticle 0, 0, emitter_attack_pos
    waitparticle

    addparticle 0, 2, emitter_attack_pos
    addparticle 0, 1, emitter_attack_pos
    waitparticle

    unloadparticle 0
    waitstate
    end

.close
