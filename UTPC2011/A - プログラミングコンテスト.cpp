#include <bits/stdc++.h>
using namespace std;
int main(){
    int M, N, a;
    cin >> M >> N;
    vector<int> mem(M, 0);
    for (int i = 0; i < M; i++)
        for (int j = 0; j < N; j++)
        {
            cin >> a;
            mem.at(i) += a;
        }
    cout << *max_element(mem.begin(), mem.end()) << endl;
}