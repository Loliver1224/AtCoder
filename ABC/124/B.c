#include <stdio.h>
int main(void){
    int n, h, cnt=0, max=0;
    scanf("%d", &n);
    while(n--){
        scanf("%d", &h);
        if (h>=max){
            cnt++;
            max = h;
        }
    }
    printf("%d\n", cnt);
    return 0;
}