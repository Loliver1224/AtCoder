#include <bits/stdc++.h>
using namespace std;
int main(){
    long N;
    cin >> N;

    long ans = 0;
    for(long i=1; i*i < N; i++)
        if(N%i == 0 && N/i-1)
            ans += N/i - 1;
    cout << ans << endl;
}