#include <stdio.h>
int main(void){
    int a,b;
    scanf("%d%d", &a, &b);
    printf("%d\n", a>b ? 2*a-1 : b>a ? 2*b-1 : 2*a);
    return 0;
}