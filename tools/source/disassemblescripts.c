#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

const char* Battlers[] =
{
    "BATTLER_ALL",
    "BATTLER_ATTACKER",
    "BATTLER_DEFENDER",
    "BATTLER_PLAYER",
    "BATTLER_OPPONENT",
    "BATTLER_FAINTED",
    "BATTLER_REPLACE",
    "BATTLER_ADDL_EFFECT",
    "BATTLER_CHAR_CHECKED",
    "BATTLER_PLAYER_LEFT",
    "BATTLER_ENEMY_LEFT",
    "BATTLER_PLAYER_RIGHT",
    "BATTLER_ENEMY_RIGHT",
    "BATTLER_x0D",
    "BATTLER_ATTACKER2",
    "BATTLER_DEFENDER2",
    "BATTLER_ATTACKER_PARTNER",
    "BATTLER_DEFENDER_PARTNER",
    "BATTLER_WHIRLWINDED",
    "BATTLER_x13",
    "BATTLER_x14",
    "BATTLER_x15",
    "BATTLER_ALL_REPLACED",
    "BATTLER_xFF"
};

int main(int argc, char **argv)
{
    char sourcename[BUFF_SIZE];
    int elementnum, movetoa001 = 0;
    FILE *source;

    // get the number from each successive line
    for (int i = 0; i <= 1; i++)
    {
        if (movetoa001 == 1)
            sprintf(sourcename, "a030\\a030_%03d", i);
        else
            sprintf(sourcename, "a001\\a001_%03d", i);

        printf("//%s\n", sourcename, i);

        source = fopen(sourcename, "rb+");

        elementnum = 0;

        while (elementnum != EOF)
        {
            elementnum = fgetc(source);
            elementnum |= fgetc(source) << 8;
            elementnum |= fgetc(source) << 16;
            elementnum |= fgetc(source) << 24; // get 32 bit num
            if (elementnum != EOF)
            {
                switch (elementnum)
                {
                case 0x0:
                    printf("    startencounter\n");
                    break;
                case 0x1:
                    printf("    pokemonencounter ");
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("%s\n", (elementnum > 0x16) ? (Battlers[0x17]) : (Battlers[elementnum]));
                    break;
                case 0x2:
                    printf("    pokemonslidein ");
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("%s\n", (elementnum > 0x16) ? (Battlers[0x17]) : (Battlers[elementnum]));
                    break;
                case 0x3:
                    printf("    pokemonappear ");
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("%s\n", (elementnum > 0x16) ? (Battlers[0x17]) : (Battlers[elementnum]));
                    break;
                case 0x4:
                    printf("    returnpokemon ");
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("%s\n", (elementnum > 0x16) ? (Battlers[0x17]) : (Battlers[elementnum]));
                    break;
                case 0x5:
                    printf("    deletepokemon ");
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("%s\n", (elementnum > 0x16) ? (Battlers[0x17]) : (Battlers[elementnum]));
                    break;
                case 0x6:
                    printf("    starttrainerencounter ");
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("%s\n", (elementnum > 0x16) ? (Battlers[0x17]) : (Battlers[elementnum]));
                    break;
                case 0x7:
                    printf("    throwpokeball ");
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("%s, ", (elementnum > 0x16) ? (Battlers[0x17]) : (Battlers[elementnum]));
                    elementnum = fgetc(source);
                    elementnum |= fgetc(source) << 8;
                    elementnum |= fgetc(source) << 16;
                    elementnum |= fgetc(source) << 24;
                    printf("0x%X\n", elementnum);
                    break;
                case 0x8:
                    printf("    preparetrainerslide\n");
                    break;
                case 0x9:
                    printf("    trainerslidein\n");
                    break;
                case 0xA:
                    printf("    backgroundslidein\n");
                    break;
                case 0xB:
                    printf("    hpgaugeslidein\n");
                    break;
                case 0xC:
                    printf("    hpgaugeslidewait\n");
                    break;
                case 0xD:
                    printf("    preparehpgaugeslide\n");
                    break;
                case 0xE:
                    printf("    waitmessage\n");
                    break;
                case 0xF:
                    printf("    damagecalc\n");
                    break;
                case 0x10:
                    printf("    damagecalc2\n");
                    break;
                case 0x11:
                    printf("    printattackmessage\n");
                    break;
                case 0x12:
                    printf("    printmessage\n");
                    break;
                case 0x13:
                    printf("    printmessage2\n");
                    break;
                case 0x14:
                    printf("    printpreparedmessage\n");
                    break;
                case 0x15:
                    printf("    preparemessage\n");
                    break;
                case 0x16:
                    printf("    printmessagepassbattler\n");
                    break;
                case 0x17:
                    printf("    seteffectprimary\n");
                    break;
                case 0x18:
                    printf("    seteffectsecondary\n");
                    break;
                case 0x19:
                    printf("    monflicker\n");
                    break;
                case 0x1A:
                    printf("    datahpupdate\n");
                    break;
                case 0x1B:
                    printf("    healthbarupdate\n");
                    break;
                case 0x1C:
                    printf("    tryfaintmon\n");
                    break;
                case 0x1D:
                    printf("    dofaintanimation\n");
                    break;
                case 0x1E:
                    printf("    wait\n");
                    break;
                case 0x1F:
                    printf("    playse\n");
                    break;
                case 0x20:
                    printf("    if\n");
                    break;
                case 0x21:
                    printf("    ifmonstat\n");
                    break;
                case 0x22:
                    printf("    fadeout\n");
                    break;
                case 0x23:
                    printf("    jumptosubseq\n");
                    break;
                case 0x24:
                    printf("    jumptocurmovescript\n");
                    break;
                case 0x25:
                    printf("    jumptocurmovescript2\n");
                    break;
                case 0x26:
                    printf("    critcalc\n");
                    break;
                case 0x27:
                    printf("    shouldgetexp\n");
                    break;
                case 0x28:
                    printf("    initexpget\n");
                    break;
                case 0x29:
                    printf("    getexp\n");
                    break;
                case 0x2A:
                    printf("    getexploop\n");
                    break;
                case 0x2B:
                    printf("    showmonlist\n");
                    break;
                case 0x2C:
                    printf("    waitformonselection\n");
                    break;
                case 0x2D:
                    printf("    switchindataupdate\n");
                    break;
                case 0x2E:
                    printf("    jumpifcantswitch\n");
                    break;
                case 0x2F:
                    printf("    initcapture\n");
                    break;
                case 0x30:
                    printf("    capturemon\n");
                    break;
                case 0x31:
                    printf("    setmultihit\n");
                    break;
                case 0x32:
                    printf("    changevar\n");
                    break;
                case 0x33:
                    printf("    statbuffchange\n");
                    break;
                case 0x34:
                    printf("    changevartomonvalue\n");
                    break;
                case 0x35:
                    printf("    clearstatus2\n");
                    break;
                case 0x36:
                    printf("    togglevanish\n");
                    break;
                case 0x37:
                    printf("    abilitycheck\n");
                    break;
                case 0x38:
                    printf("    random\n");
                    break;
                case 0x39:
                    printf("    changevar2\n");
                    break;
                case 0x3A:
                    printf("    changevartomonvalue\n");
                    break;
                case 0x3B:
                    printf("    goto\n");
                    break;
                case 0x3C:
                    printf("    gotosubscript\n");
                    break;
                case 0x3D:
                    printf("    gotosubscript2\n");
                    break;
                case 0x3E:
                    printf("    checkifchatot\n");
                    break;
                case 0x3F:
                    printf("    sethaze\n");
                    break;
                case 0x40:
                    printf("    setsomeflag\n");
                    break;
                case 0x41:
                    printf("    clearsomeflag\n");
                    break;
                case 0x42:
                    printf("    setstatusicon\n");
                    break;
                case 0x43:
                    printf("    trainermessage\n");
                    break;
                case 0x44:
                    printf("    calcmoney\n");
                    break;
                case 0x45:
                    printf("    setstatus2effect\n");
                    break;
                case 0x46:
                    printf("    setstatus2effect2\n");
                    break;
                case 0x47:
                    printf("    setstatus2effect3\n");
                    break;
                case 0x48:
                    printf("    returnmessage\n");
                    break;
                case 0x49:
                    printf("    sentoutmessage\n");
                    break;
                case 0x4A:
                    printf("    encountermessage\n");
                    break;
                case 0x4B:
                    printf("    encountermessage2\n");
                    break;
                case 0x4C:
                    printf("    trainermessage2\n");
                    break;
                case 0x4D:
                    printf("    tryconversion\n");
                    break;
                case 0x4E:
                    printf("    if2\n");
                    break;
                case 0x4F:
                    printf("    ifmonstat2\n");
                    break;
                case 0x50:
                    printf("    cmd_50_somecheck\n");
                    break;
                case 0x51:
                    printf("    setlightscreen\n");
                    break;
                case 0x52:
                    printf("    setreflect\n");
                    break;
                case 0x53:
                    printf("    setmist\n");
                    break;
                case 0x54:
                    printf("    tryonehitko\n");
                    break;
                case 0x55:
                    printf("    damagediv\n");
                    break;
                case 0x56:
                    printf("    damagediv2\n");
                    break;
                case 0x57:
                    printf("    trymimic\n");
                    break;
                case 0x58:
                    printf("    metronome\n");
                    break;
                case 0x59:
                    printf("    trydisable\n");
                    break;
                case 0x5A:
                    printf("    counter\n");
                    break;
                case 0x5B:
                    printf("    mirrorcoat\n");
                    break;
                case 0x5C:
                    printf("    tryencore\n");
                    break;
                case 0x5D:
                    printf("    tryconversion2\n");
                    break;
                case 0x5E:
                    printf("    trysketch\n");
                    break;
                case 0x5F:
                    printf("    trysleeptalk\n");
                    break;
                case 0x60:
                    printf("    flaildamagecalc\n");
                    break;
                case 0x61:
                    printf("    tryspite\n");
                    break;
                case 0x62:
                    printf("    healbell\n");
                    break;
                case 0x63:
                    printf("    trythief\n");
                    break;
                case 0x64:
                    printf("    willprotectwork\n");
                    break;
                case 0x65:
                    printf("    trysubstitute\n");
                    break;
                case 0x66:
                    printf("    trywhirlwind\n");
                    break;
                case 0x67:
                    printf("    transform\n");
                    break;
                case 0x68:
                    printf("    tryspikes\n");
                    break;
                case 0x69:
                    printf("    checkspikes\n");
                    break;
                case 0x6A:
                    printf("    tryperishsong\n");
                    break;
                case 0x6B:
                    printf("    orderbattlersbyspeed\n");
                    break;
                case 0x6C:
                    printf("    exitloopatvalue\n");
                    break;
                case 0x6D:
                    printf("    weatherdamagecalc\n");
                    break;
                case 0x6E:
                    printf("    rolloutdamagecalc\n");
                    break;
                case 0x6F:
                    printf("    furycutterdamagecalc\n");
                    break;
                case 0x70:
                    printf("    tryattract\n");
                    break;
                case 0x71:
                    printf("    trysafeguard\n");
                    break;
                case 0x72:
                    printf("    trypresent\n");
                    break;
                case 0x73:
                    printf("    magnitudedamagecalc\n");
                    break;
                case 0x74:
                    printf("    tryswitchinmon\n");
                    break;
                case 0x75:
                    printf("    dorapidspineffect\n");
                    break;
                case 0x76:
                    printf("    changehprecoverybasedonweather\n");
                    break;
                case 0x77:
                    printf("    hiddenpowerdamagecalc\n");
                    break;
                case 0x78:
                    printf("    dopsychup\n");
                    break;
                case 0x79:
                    printf("    dofuturesight\n");
                    break;
                case 0x7A:
                    printf("    checkhitrate\n");
                    break;
                case 0x7B:
                    printf("    tryteleport\n");
                    break;
                case 0x7C:
                    printf("    beatupdamagecalc\n");
                    break;
                case 0x7D:
                    printf("    dofollowme\n");
                    break;
                case 0x7E:
                    printf("    tryhelpinghand\n");
                    break;
                case 0x7F:
                    printf("    trytrick\n");
                    break;
                case 0x80:
                    printf("    trywish\n");
                    break;
                case 0x81:
                    printf("    tryassist\n");
                    break;
                case 0x82:
                    printf("    trymagiccoat\n");
                    break;
                case 0x83:
                    printf("    trymagiccoat2\n");
                    break;
                case 0x84:
                    printf("    dorevenge\n");
                    break;
                case 0x85:
                    printf("    trybreakscreens\n");
                    break;
                case 0x86:
                    printf("    tryyawn\n");
                    break;
                case 0x87:
                    printf("    tryknockitemoff\n");
                    break;
                case 0x88:
                    printf("    eruptiondamagecalc\n");
                    break;
                case 0x89:
                    printf("    tryimprison\n");
                    break;
                case 0x8A:
                    printf("    trygrudge\n");
                    break;
                case 0x8B:
                    printf("    trysnatch\n");
                    break;
                case 0x8C:
                    printf("    lowkickdamagecalc\n");
                    break;
                case 0x8D:
                    printf("    weatherballdamagecalc\n");
                    break;
                case 0x8E:
                    printf("    trypursuit\n");
                    break;
                case 0x8F:
                    printf("    typecheck\n");
                    break;
                case 0x90:
                    printf("    checkoneturnflag\n");
                    break;
                case 0x91:
                    printf("    setoneturnflag\n");
                    break;
                case 0x92:
                    printf("    gyroballdamagecalc\n");
                    break;
                case 0x93:
                    printf("    metalburstdamagecalc\n");
                    break;
                case 0x94:
                    printf("    paybackdamagecalc\n");
                    break;
                case 0x95:
                    printf("    trumpcarddamagecalc\n");
                    break;
                case 0x96:
                    printf("    wringoutdamagecalc\n");
                    break;
                case 0x97:
                    printf("    trymefirst\n");
                    break;
                case 0x98:
                    printf("    trycopycat\n");
                    break;
                case 0x99:
                    printf("    punishmentdamagecalc\n");
                    break;
                case 0x9A:
                    printf("    trysuckerpunch\n");
                    break;
                case 0x9B:
                    printf("    checkbattlercondition\n");
                    break;
                case 0x9C:
                    printf("    tryfeint\n");
                    break;
                case 0x9D:
                    printf("    trypsychoshift\n");
                    break;
                case 0x9E:
                    printf("    trylastresort\n");
                    break;
                case 0x9F:
                    printf("    trytoxicspikes\n");
                    break;
                case 0xA0:
                    printf("    checktoxicspikes\n");
                    break;
                case 0xA1:
                    printf("    moldbreakerabilitycheck\n");
                    break;
                case 0xA2:
                    printf("    checkside\n");
                    break;
                case 0xA3:
                    printf("    trypickup\n");
                    break;
                case 0xA4:
                    printf("    dotrickroom\n");
                    break;
                case 0xA5:
                    printf("    checkmovefinished\n");
                    break;
                case 0xA6:
                    printf("    checkitemeffect\n");
                    break;
                case 0xA7:
                    printf("    getitemeffect\n");
                    break;
                case 0xA8:
                    printf("    getitempower\n");
                    break;
                case 0xA9:
                    printf("    trycamouflage\n");
                    break;
                case 0xAA:
                    printf("    donaturepower\n");
                    break;
                case 0xAB:
                    printf("    dosecretpower\n");
                    break;
                case 0xAC:
                    printf("    trynaturalgift\n");
                    break;
                case 0xAD:
                    printf("    trypluck\n");
                    break;
                case 0xAE:
                    printf("    tryfling\n");
                    break;
                case 0xAF:
                    printf("    yesnobox\n");
                    break;
                case 0xB0:
                    printf("    yesnowait\n");
                    break;
                case 0xB1:
                    printf("    monlist\n");
                    break;
                case 0xB2:
                    printf("    monlistwait\n");
                    break;
                case 0xB3:
                    printf("    setbattleresult\n");
                    break;
                case 0xB4:
                    printf("    checkstealthrock\n");
                    break;
                case 0xB5:
                    printf("    checkeffectactivation\n");
                    break;
                case 0xB6:
                    printf("    checkchatteractivation\n");
                    break;
                case 0xB7:
                    printf("    getmoveparameter\n");
                    break;
                case 0xB8:
                    printf("    mosaic\n");
                    break;
                case 0xB9:
                    printf("    changeform\n");
                    break;
                case 0xBA:
                    printf("    changebackground\n");
                    break;
                case 0xBB:
                    printf("    recoverstatus\n");
                    break;
                case 0xBC:
                    printf("    tryescape\n");
                    break;
                case 0xBD:
                    printf("    initstartballguage\n");
                    break;
                case 0xBE:
                    printf("    deletestartballguage\n");
                    break;
                case 0xBF:
                    printf("    initballguage\n");
                    break;
                case 0xC0:
                    printf("    deleteballguage\n");
                    break;
                case 0xC1:
                    printf("    loadballgfx\n");
                    break;
                case 0xC2:
                    printf("    deleteballgfx\n");
                    break;
                case 0xC3:
                    printf("    incrementgamestat\n");
                    break;
                case 0xC4:
                    printf("    cmd_C4\n");
                    break;
                case 0xC5:
                    printf("    checkifcurrentmovehits\n");
                    break;
                case 0xC6:
                    printf("    cmd_C6\n");
                    break;
                case 0xC7:
                    printf("    cmd_C7\n");
                    break;
                case 0xC8:
                    printf("    checkwipeout\n");
                    break;
                case 0xC9:
                    printf("    tryacupressure\n");
                    break;
                case 0xCA:
                    printf("    removeitem\n");
                    break;
                case 0xCB:
                    printf("    tryrecycle\n");
                    break;
                case 0xCC:
                    printf("    itemeffectcheckonhit\n");
                    break;
                case 0xCD:
                    printf("    battleresultmessage\n");
                    break;
                case 0xCE:
                    printf("    runawaymessage\n");
                    break;
                case 0xCF:
                    printf("    giveupmessage\n");
                    break;
                case 0xD0:
                    printf("    cmd_D0_checkhpsomething\n");
                    break;
                case 0xD1:
                    printf("    trynaturalcure\n");
                    break;
                case 0xD2:
                    printf("    checknostatus\n");
                    break;
                case 0xD3:
                    printf("    nine\n");
                    break;
                case 0xD4:
                    printf("    cmd_D4\n");
                    break;
                case 0xD5:
                    printf("    checkwhenitemmakesmovehit\n");
                    break;
                case 0xD6:
                    printf("    cmd_D6\n");
                    break;
                case 0xD7:
                    printf("    playmovesoundeffect\n");
                    break;
                case 0xD8:
                    printf("    playsong\n");
                    break;
                case 0xD9:
                    printf("    checkifsafariencounterdone\n");
                    break;
                case 0xDA:
                    printf("    waitwithoutbuttonpress\n");
                    break;
                case 0xDB:
                    printf("    checkmovetypematches\n");
                    break;
                case 0xDC:
                    printf("    getdatafrompersonalnarc\n");
                    break;
                case 0xDD:
                    printf("    refreshmondata\n");
                    break;
                case 0xDE:
                    printf("    cmd_DE\n");
                    break;
                case 0xDF:
                    printf("    cmd_DF\n");
                    break;
                case 0xE0:
                    printf("    endscript\n");
                    break;
                default:
                    printf("    //invalid command!\n");
                    break;
                }
            }
        }
        //printf("%x\n", elementnum);

        fclose(source);
        if (i == 276 && movetoa001 == 0)
        {
            i = -1;
            movetoa001 = 1;
        }
    }

    return 0;
}
