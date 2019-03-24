#include <bits/stdc++.h>
using namespace std;

int dp[101][4][4][4];

int main(){
    int N;
    cin >> N;
    // 長さ０の文字列は１
    // 0,1,2に関する制約しかないので、
    // Sは333Sと考えても問題がない
    dp[0][3][3][3] = 1;
    int mod = 1'000'000'007;

    // 文字列の文字数
    for(int len=0; len<N; len++)
        // 最後から１文字目の文字
        for(int c1=0; c1<4; c1++)
            // 最後から２文字目の文字
            for(int c2=0; c2<4; c2++)
                // 最後から３文字目の文字
                for(int c3=0; c3<4; c3++){
                    // 条件に当てはまるものがない場合
                    if(dp[len][c1][c2][c3] == 0)
                        continue;
                    // 新しく追加する文字
                    for(int a=0; a<4; a++){
                        // ダメな５つの条件
                        if(a==2 && c1==1 && c2==0)
                            continue;
                        if(a==2 && c1==0 && c2==1)
                            continue;
                        if(a==1 && c1==2 && c2==0)
                            continue;
                        if(a==2 && c1==1 && c3==0)
                            continue;
                        if(a==2 && c2==1 && c3==0)
                            continue;
                        
                        // ダメな条件を抜けたら、aを足した文字列がつくれる
                        dp[len+1][a][c1][c2] += dp[len][c1][c2][c3];
                        dp[len+1][a][c1][c2] %= mod;
                    }
                }
    int ans = 0;

    // 長さNの全部の答えをまとめる
    // 最後から１文字目の文字
    for (int c1 = 0; c1 < 4; c1++)
        // 最後から２文字目の文字
        for (int c2 = 0; c2 < 4; c2++)
            // 最後から３文字目の文字
            for (int c3 = 0; c3 < 4; c3++){
                ans += dp[N][c1][c2][c3];
                ans %= mod;
            }
    cout <<ans << endl;
}