#include <bits/stdc++.h>
using namespace std;
int main(){
    int N, Q;
    string s;
    cin >> N >> Q >> s;
    vector<int> t(N+1, 0);
    for(int i=0; i<N-1; i++)
        t.at(i+1) = t.at(i) (s.at(i)=='A' && s.at(i+1)=='c') ? 1 : 0;
    int l, r;
    for(int i=0; i<Q; i++){
        cin >> l >> r;
        cout << t.at(r-1) - t.at(l-1) << endl;
    }
}