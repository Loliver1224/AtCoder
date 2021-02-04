#include <stdio.h>
#include <math.h>

int main(){
    int N, K;
    scanf("%d %d", &N, &K);

    double ans = 0;
    for(int i=0; i<N; i++){
        int j, cnt = 0;
        for(j=i+1; j<K; j*=2, cnt++);
        ans += pow(N, -1) * pow(0.5, cnt);
    }
    printf("%.13f\n", ans);
}