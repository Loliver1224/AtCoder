#include <bits/stdc++.h>
using namespace std;
#define rep(i, n) for(int i=0; i<n; ++i)

int main(){
    vector<vector<int>> A(3, vector<int>(3));
    rep(i, 3) rep(j, 3) cin >> A[i][j];
    int N;
    cin >> N;
    rep(i, N) {
        int b;
        cin >> b;
        rep(j, 3) rep(k, 3) if (A[j][k] == b) A[j][k] = -1;
    }
    if (A[0][0] + A[1][1] + A[2][2] == -3 || A[0][2] + A[1][1] + A[2][0] == -3) {
        cout << "Yes" << endl;
        return 0;
    }
    rep(i, 2) {
        rep(j, 3) {
            int line;
            if (i == 0) line = A[j][0] + A[j][1] + A[j][2];
            else line = A[0][j] + A[1][j] + A[2][j];
            if (line == -3) {
                cout << "Yes" << endl;
                return 0;
            }
        }
    }
    cout << "No" << endl;
}