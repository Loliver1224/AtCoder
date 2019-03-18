#include <bits/stdc++.h>
using namespace std;

int main(){
    int N, sum=0;
    cin >> N;
    vector<int> A(N);
    for(int i=0; i<N; i++){
        cin >> A.at(i);
        sum += A.at(i);
    }
    int avg = sum / N;
    for(int i=0; i<N; i++){
        int ans = avg - A.at(i);
        if(ans < 0)
            ans *= -1;
        cout << ans << endl;
    }
}