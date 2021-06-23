#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

#define GET_U32(var, file)    \
    var = fgetc(file);        \
    var |= fgetc(file) << 8;  \
    var |= fgetc(file) << 16; \
    var |= fgetc(file) << 24;

#define GET_ADDRESS(elementnum, file) \
    ((elementnum - 1) * 4 + ftell(file))

int logaddresses[50] = {0};

void log_address(int address)
{
    int i;

    for (i = 0; i < sizeof(logaddresses) / sizeof(int); i++)
    {
        if (logaddresses[i] == address)
            return;
        else if (logaddresses[i] == 0)
        {
            logaddresses[i] = address;
            return;
        }
    }
}

int gLogging = 1;

int deleteaddress(int address) // deletes the address from the log so it won't be used again
{
    int i;
    int _hasBeenRemoved = 0;

    if (address)
    {
        for (i = 0; i < sizeof(logaddresses) / sizeof(int); i++)
        {
            if (logaddresses[i] == address)
            {
                _hasBeenRemoved = 1;
            }

            if (_hasBeenRemoved && i != (sizeof(logaddresses) / sizeof(int) - 1))
            {
                logaddresses[i] = logaddresses[i + 1];
            }
        }
    }

    return _hasBeenRemoved;
}

int main(int argc, char **argv)
{
    char sourcename[BUFF_SIZE], scriptname[BUFF_SIZE], basename[BUFF_SIZE];
    int elementnum, movetoa010 = 0, ignoreEOF = 0;
    FILE *source, *scriptfile;

    for (int i = 0; i <= 500; i++)
    {
        if (movetoa010 == 0)
        {
            sprintf(scriptname, "movescripts\\a061\\%03d.s", i);
            sprintf(sourcename, "a061\\a061_%02d", i);
            sprintf(basename, "a061_%02d", i);
        }
        else
        {
            sprintf(scriptname, "movescripts\\a010\\%03d.s", i);
            sprintf(sourcename, "a010\\a010_%03d", i);
            sprintf(basename, "a010_%03d", i);
        }

        source = fopen(sourcename, "rb+");
        fseek(source, 0, SEEK_SET);

        scriptfile = fopen(scriptname, "w");

        fprintf(scriptfile, ".nds\n.thumb\n\n.include \"include/animscriptcmd.s\"\n.include \"include/abilities.s\"\n.include \"include/itemnums.s\"\n.include \"include/monnums.s\"\n.include \"include/movenums.s\"\n\n.create \"%s\", 0\n\n%s:\n", sourcename, basename);

        elementnum = 0;

        gLogging = 1;

        while (elementnum != EOF || ignoreEOF == 1)
        {
            if (gLogging == 0) // make sure this is done first
                if (deleteaddress(ftell(source)))
                    fprintf(scriptfile, "_%04X:\n", ftell(source));

            GET_U32(elementnum, source);
            if (elementnum != EOF || ignoreEOF == 1)
            {
                ignoreEOF = 0; // if EOF
                switch (elementnum)
                {
                case 0x00:
                    if (gLogging == 0) fprintf(scriptfile, "    wait ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x01:
                    if (gLogging == 0) fprintf(scriptfile, "    waitstate\n");
                    break;
                case 0x02:
                    if (gLogging == 0) fprintf(scriptfile, "    loop ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x03:
                    if (gLogging == 0) fprintf(scriptfile, "    doloop\n");
                    break;
                case 0x04:
                    if (gLogging == 0) fprintf(scriptfile, "    end\n");
                    ignoreEOF = 0;
                    break;
                case 0x05:
                    if (gLogging == 0) fprintf(scriptfile, "    playse ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x06:
                    if (gLogging == 0) fprintf(scriptfile, "    changemonbg ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x07:
                    if (gLogging == 0) fprintf(scriptfile, "    resetmonbg ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x08:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd08\n");
                    break;
                case 0x09:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd09\n");
                    break;
                case 0x0A:
                    if (gLogging == 0) fprintf(scriptfile, "    call ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x0B:
                    if (gLogging == 0) fprintf(scriptfile, "    return\n");
                    break;
                case 0x0C:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd0C ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    ignoreEOF = 1;
                    break;
                case 0x0D:
                    if (gLogging == 0) fprintf(scriptfile, "    checkturn ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS(elementnum, source));
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x0E:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd0E ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x0F:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd0F\n");
                    break;
                case 0x10:
                    if (gLogging == 0) fprintf(scriptfile, "    changebg ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x11:
                    if (gLogging == 0) fprintf(scriptfile, "    changebgparam ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x12:
                    if (gLogging == 0) fprintf(scriptfile, "    resetbg ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum);
                    break;
                case 0x13:
                    if (gLogging == 0) fprintf(scriptfile, "    waitforchangebg2\n");
                    break;
                case 0x14:
                    if (gLogging == 0) fprintf(scriptfile, "    waitforchangebg\n");
                    break;
                case 0x15:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd15\n");
                    break;
                case 0x16:
                    if (gLogging == 0) fprintf(scriptfile, "    playsepan ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", (signed int)elementnum);
                    break;
                case 0x17:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd17\n");
                    break;
                case 0x18:
                    if (gLogging == 0) fprintf(scriptfile, "    playsepanmod ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // id
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // panstart
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // panend
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // panadd
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // time
                    break;
                case 0x19:
                    if (gLogging == 0) fprintf(scriptfile, "    repeatse ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", (signed int)elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x1A:
                    if (gLogging == 0) fprintf(scriptfile, "    waitse ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", (signed int)elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x1B:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd1B\n");
                    break;
                case 0x1C:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd1C\n");
                    break;
                case 0x1D:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd1D\n");
                    break;
                case 0x1E:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd1E\n");
                    break;
                case 0x1F:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd1F ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x20:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd20 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x21:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd21\n");
                    break;
                case 0x22:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd22\n");
                    break;
                case 0x23:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd23\n");
                    break;
                case 0x24:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd24\n");
                    break;
                case 0x25:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd25\n");
                    break;
                case 0x26:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd26\n");
                    break;
                case 0x27:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd27\n");
                    break;
                case 0x28:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd28\n");
                    break;
                case 0x29:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd29\n");
                    break;
                case 0x2A:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd2A\n");
                    break;
                case 0x2B:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd2B\n");
                    break;
                case 0x2C:
                    if (gLogging == 0) fprintf(scriptfile, "    stopse ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x2D:
                    if (gLogging == 0) fprintf(scriptfile, "    callfunction ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (elementnum < 1)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 2)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 3)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 4)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 5)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 6)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 7)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 8)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 10)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\"\n", elementnum);
                    }
                    else
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    }
                    break;
                case 0x2E:
                    if (gLogging == 0) fprintf(scriptfile, "    addparticle ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // address
                    break;
                case 0x2F:
                    if (gLogging == 0) fprintf(scriptfile, "    addparticle2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num2
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // address
                    break;
                case 0x30:
                    if (gLogging == 0) fprintf(scriptfile, "    addsequentialparticle ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num2
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num3
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num4
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num5
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num6
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // address
                    break;
                case 0x31:
                    if (gLogging == 0) fprintf(scriptfile, "    addparticlebasedonbattler ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num2
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num3
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num4
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // address
                    break;
                case 0x32:
                    if (gLogging == 0) fprintf(scriptfile, "    waitparticle\n");
                    break;
                case 0x33:
                    if (gLogging == 0) fprintf(scriptfile, "    loadparticle ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num1
                    break;
                case 0x34:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd34\n");
                    break;
                case 0x35:
                    if (gLogging == 0) fprintf(scriptfile, "    unloadparticle ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x36:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd36 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (elementnum < 1)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 2)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 3)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 4)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 5)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 6)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 7)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 8)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\"\n", elementnum);
                    }
                    else// if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // count
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param0
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param4
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param5
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param6
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param7
                    }
                    break;
                case 0x37:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd37 ");
                    GET_U32(elementnum, source);
                    if (elementnum < 1)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 2)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 3)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 4)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 5)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 6)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 7)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 8)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\"\n", elementnum);
                    }
                    else// if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // count
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param0
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param4
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param5
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param6
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param7
                    }
                    break;
                case 0x38:
                    if (gLogging == 0) fprintf(scriptfile, "    initspriteresource\n");
                    break;
                case 0x39:
                    if (gLogging == 0) fprintf(scriptfile, "    loadspriteresource ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x3A:
                    if (gLogging == 0) fprintf(scriptfile, "    loadspritemaybe ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num2
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num3
                    break;
                case 0x3B:
                    if (gLogging == 0) fprintf(scriptfile, "    unloadspriteresource\n");
                    break;
                case 0x3C:
                    if (gLogging == 0) fprintf(scriptfile, "    resetsprite ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num3
                    break;
                case 0x3D:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd3D\n");
                    break;
                case 0x3E:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd3E ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num3
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num3
                    break;
                case 0x3F:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd3F\n");
                    break;
                case 0x40:
                    if (gLogging == 0) fprintf(scriptfile, "    jumpifside ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS(elementnum, source));
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x41:
                    if (gLogging == 0) fprintf(scriptfile, "    playcry ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", (signed int) elementnum); // pan
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // volume
                    break;
                case 0x42:
                    if (gLogging == 0) fprintf(scriptfile, "    waitcry ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x43:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd43\n");
                    break;
                case 0x44:
                    if (gLogging == 0) fprintf(scriptfile, "    transform ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x45:
                    if (gLogging == 0) fprintf(scriptfile, "    copymonsprite ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x46:
                    if (gLogging == 0) fprintf(scriptfile, "    jumpbasedonweather ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS(elementnum, source));
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS(elementnum, source));
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS(elementnum, source));
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X, ", GET_ADDRESS(elementnum, source));
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x47:
                    if (gLogging == 0) fprintf(scriptfile, "    jumpifcontest ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x48:
                    if (gLogging == 0) fprintf(scriptfile, "    jumpifplayerattack ");
                    GET_U32(elementnum, source);
                    if (gLogging == 1) log_address(GET_ADDRESS(elementnum, source));
                    if (gLogging == 0) fprintf(scriptfile, "_%04X\n", GET_ADDRESS(elementnum, source));
                    break;
                case 0x49:
                    if (gLogging == 0) fprintf(scriptfile, "    initresources ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num2
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num3
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num4
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num5
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num6
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num7
                    break;
                case 0x4A:
                    if (gLogging == 0) fprintf(scriptfile, "    loadresources ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // file
                    break;
                case 0x4B:
                    if (gLogging == 0) fprintf(scriptfile, "    loadpalette ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // file
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // pal
                    break;
                case 0x4C:
                    if (gLogging == 0) fprintf(scriptfile, "    loadcell ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // file
                    break;
                case 0x4D:
                    if (gLogging == 0) fprintf(scriptfile, "    loadcellanm ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // file
                    break;
                case 0x4E:
                    if (gLogging == 0) fprintf(scriptfile, "    addsomething ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num2
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num3
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num4
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num5
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num6
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num7
                    GET_U32(elementnum, source);
                    if (elementnum < 1) // count
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 2)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 3)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 4)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 5)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 6)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 7)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\", \"NaN\"\n", elementnum);
                    }
                    else if (elementnum < 8)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum);
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, \"NaN\"\n", elementnum);
                    }
                    else// if (elementnum < 9)
                    {
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // count
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param0
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param1
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param2
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param3
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param4
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param5
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param6
                        GET_U32(elementnum, source);
                        if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // param7
                    }
                    break;
                    break;
                case 0x4F:
                    if (gLogging == 0) fprintf(scriptfile, "    addsomething2 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num2
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num3
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num4
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num5
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num6
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num7
                    break;
                case 0x50:
                    if (gLogging == 0) fprintf(scriptfile, "    freeresources ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum);
                    break;
                case 0x51:
                    if (gLogging == 0) fprintf(scriptfile, "    enablemonsprite ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X\n", elementnum); // value
                    break;
                case 0x52:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd52 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num0
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num1
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num2
                    break;
                case 0x53:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd53 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x54:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd54\n");
                    break;
                case 0x55:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd55 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x56:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd56 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "0x%X, ", elementnum); // num
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                case 0x57:
                    if (gLogging == 0) fprintf(scriptfile, "    cmd57 ");
                    GET_U32(elementnum, source);
                    if (gLogging == 0) fprintf(scriptfile, "%d\n", elementnum); // num
                    break;
                default:
                    if (gLogging == 0) fprintf(scriptfile, "    //invalid command: 0x%X\n", elementnum);
                    break;
                }
            }
            else if (gLogging == 1)
            {
                gLogging = 0;
                fseek(source, 0, SEEK_SET);
                elementnum = 0;
            }
            else
                gLogging = 1;
        }
        //printf("%x\n", elementnum);

        fprintf(scriptfile, "\n.close\n");

        fclose(source);
        fclose(scriptfile);

        if (i == 49 && movetoa010 == 0)
        {
            i = -1;
            movetoa010 = 1;
        }
    }

    return 0;
}
