#include <stdio.h>
int main(void){
    char board[4][4];
    int i;
    for(i=0; i<16; scanf("%c%*c", &board[i/4][i%4]), i++);
    for(i=0; i<16; printf(i%4==3 ? "%c\n" : "%c ", board[3-i/4][3-i%4]), i++);
    return 0;
}