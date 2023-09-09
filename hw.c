#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include <mach-o/dyld.h>

int main()
{
    char * cmnd = NULL;
    cmnd = malloc(2048);
    strcpy(cmnd, "osascript ");
    char path[1024];
    uint32_t size = sizeof(path);
    _NSGetExecutablePath(path, &size);
    int len = strlen(path);
    path[len-3] = '\0';
    strcat(cmnd, path);
    strcat(cmnd, "/../Resources/Scripts/hi.scpt");
    const char * finalstr = cmnd;
    return(system(finalstr));
}
