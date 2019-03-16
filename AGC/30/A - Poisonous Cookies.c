#include <stdio.h>
int main(void){
    int a,b,c;
    scanf("%d%d%d", &a,&b,&c);
    printf("%d\n", (a+b+1<c) ? a+2*b+1 : b+c);
    return 0;
}