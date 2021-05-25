#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define BUFF_SIZE 100

int main(int argc, char **argv)
{
    const char *sourcename = NULL;
    char textfromfile[BUFF_SIZE];
    int i, elementnum;
    FILE *source;

    if (argc != 2) // the simple error handling part
    {
        fprintf(stderr, "this just takes a bunch of hex numbers and outputs their decimal equivalents\n");
        return 1;
    }

    sourcename = argv[1];

    if (strcmp(sourcename, "-") == 0)
    {
        fprintf(stderr, "Please specify a file with the raw data.\n");
        return 1;
    }
    else
    {
        source = fopen(sourcename, "r+");

        if (!source)
        {
            fprintf(stderr, "Could not find %s\n", sourcename);
            return 1;
        }
    }

    // get the number from each successive line
    while (fgets(textfromfile, 12, source) != NULL)
    {
        int flag = 0;

        elementnum = strtol(textfromfile, NULL, 2);
        //printf("elementnum = %x\n", elementnum);

        if (elementnum & 0x80)
        {
            printf("FLAG_HIDE_SHADOW");
            flag = 1;
        }
        if (elementnum & 0x40)
        {
            if (flag != 0)
                printf(" | ");
            printf("FLAG_KEEP_HP_BAR");
            flag = 1;
        }
        if (elementnum & 0x20)
        {
            if (flag != 0)
                printf(" | ");
            printf("FLAG_KINGS_ROCK");
            flag = 1;
        }
        if (elementnum & 0x10)
        {
            if (flag != 0)
                printf(" | ");
            printf("FLAG_MIRROR_MOVE");
            flag = 1;
        }
        if (elementnum & 0x08)
        {
            if (flag != 0)
                printf(" | ");
            printf("FLAG_SNATCH");
            flag = 1;
        }
        if (elementnum & 0x04)
        {
            if (flag != 0)
                printf(" | ");
            printf("FLAG_MAGIC_COAT");
            flag = 1;
        }
        if (elementnum & 0x02)
        {
            if (flag != 0)
                printf(" | ");
            printf("FLAG_PROTECT");
            flag = 1;
        }
        if (elementnum & 0x01)
        {
            if (flag != 0)
                printf(" | ");
            printf("FLAG_CONTACT");
            flag = 1;
        }
        if (flag == 0)
            printf("0");
        printf("\n");
    }

    fclose(source);

    return 0;
}
