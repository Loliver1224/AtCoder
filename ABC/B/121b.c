#include <stdio.h>
int main(void){
    int n, m, c, a[100][20], b[20], i, j, sum=0, cnt=0;
    scanf("%d %d %d", &n, &m, &c);
    for(i=0; i<m; i++)
        scanf("%d", &b[i]);
    for(i=0; i<n; i++, sum=0){
        for(j=0; j<m; j++){
            scanf("%d", &a[i][j]);
            sum += a[i][j] * b[j];
        }
        if(sum+c>0)
            cnt++;
    }
    printf("%d\n", cnt);
    return 0;
}