#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include <mach-o/dyld.h>

int main()
{
    char * cmnd = NULL;
    cmnd = malloc(2048);
    strcpy(cmnd, "osascript ");           // start building command
    char path[1024];
    uint32_t size = sizeof(path);
    _NSGetExecutablePath(path, &size);    // get the POSIX path of the "hw" executable
    int len = strlen(path);               // get the length of the path
    path[len-3] = '\0';                   // remove the "/hw" from the end of the path
    strcat(cmnd, path);
    strcat(cmnd, "/../Resources/Scripts/hi.scpt");
    const char * finalstr = cmnd;
    return(system(finalstr));             // issue command returning any error conditions
}
