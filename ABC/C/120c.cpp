#include <bits/stdc++.h>
using namespace std;
int main(){
    string s;
    cin >> s;
    int cnt0 = 0, cnt1 = 0;
    for(int c : s)
        c=='0' ? cnt0++ : cnt1++;
    cout << 2 * min(cnt0, cnt1) << endl;
}