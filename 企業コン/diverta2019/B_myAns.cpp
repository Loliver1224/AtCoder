#include <bits/stdc++.h>
using namespace std;

int main(){
    int R, G, B, N;
    cin>>R>>G>>B>>N;
    vector<vector<int>> dp(3, vector<int>(N, 0));
    for(int i=0; i<=N; i++){
        int r = i*R, g = i*G, b = i*B;
        if(r<=N)
            dp[0][i] = r;
        if(g<=N)
            dp[1][i] = g;
        if(b<=N)
            dp[2][i] = b;
    }

    int ans = 0;
    for(int i=0; i*R <= N; i++)
        for(int j=0; j*G <= N; j++)
            for(int k=0; k*B <= N; k++)
                if(dp[0][i] + dp[1][j] + dp[2][k] == N){
                    ans++;
                    break;
                }
    cout<<ans<<endl;
}