#include <stdio.h>
int main(void){
    long long a, b, ans;
    scanf("%lld %lld", &a, &b);
    ans = a % 2 ? a ^ ((b - a + 1) % 2 ? b ^ 1 : b ^ 0)
                : (b - a - 1) % 2 ? b ^ 1 : b ^ 0;
    printf("%lld\n", ans);
    return 0;
}