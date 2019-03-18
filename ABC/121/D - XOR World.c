#include <stdio.h>
long long f(long long X){
    if(X%2){
        if (X%4 == 1)
            return 1;
        return 0;
    }else{
        if (((X-1)%4) == 1)
            return 1 ^ X;
        return 0 ^ X;
    }
}
int main(void){
    long long a, b;
    scanf("%lld %lld", &a, &b);
    printf("%lld\n", f(a-1) ^ f(b));
    return 0;
}