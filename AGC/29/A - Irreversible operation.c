#include <stdio.h>
int main(void){
    long i, cnt = 0, ans = 0;
    char s[200001];
    scanf("%s", s);
    for (i = 0; s[i]; i++)
        s[i] == 'B' ? cnt++ : (ans += cnt);
    printf("%ld\n", ans);
    return 0;
}