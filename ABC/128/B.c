#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct{
    char s[11];
    int p;
    int cnt;
} dict;

int cmp(const void *a, const void *b){
    return ((dict *)b)->p - ((dict *)a)->p;
}

int scmp(const void *a, const void *b){
    return strcmp(((dict *)a)->s, ((dict *)b)->s);
}

int main(void){
    int n, i;
    scanf("%d", &n);
    dict rest[n];
    for(i=0; i<n; i++){
        scanf("%s %d", rest[i].s, &rest[i].p);
        rest[i].cnt = i + 1;
    }
    qsort(rest, n, sizeof(dict), cmp);
    qsort(rest, n, sizeof(dict), scmp);
    for(i=0; i<n; i++)
        printf("%d\n", rest[i].cnt);

    return 0;
}