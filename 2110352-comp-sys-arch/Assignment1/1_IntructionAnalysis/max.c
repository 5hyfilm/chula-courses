#include <stdio.h>

int max1(int a, int b)
{
    return (a > b) ? a : b;
}

int max2(int a, int b)
{
    int isaGTb = a > b;
    int max;
    if (isaGTb)
        max = a;
    else
        max = b;
    return max;
}

int testmax(int a, int b){
    return max1(a, b);
}