#include <bits/stdc++.h>
using namespace std;

int main(){
    long long A, B, C;
    cin >> A >> B >> C;

    if (A == B && B == C) {
        cout << (A%2 == 0 ? -1 : 0) << endl;
        return 0;
    }
    long long cnt = 0;
    while (A%2 == 0 && B%2 == 0 && C%2 == 0) {
        int na = (B + C) / 2;
        int nb = (A + C) / 2;
        int nc = (A + B) / 2;
        A = na; B = nb; C = nc;
        cnt++;
    }
    cout << cnt << endl;
}