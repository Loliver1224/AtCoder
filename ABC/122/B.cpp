#include <bits/stdc++.h>
using namespace std;
int main(){
    string s;
    cin >> s;
    int cnt = 0, ans = 0;
    for (char c : s)
        if (c == 'A' || c == 'T' || c == 'C' || c == 'G')
            cnt++;
        else{
            if (cnt > ans)
                ans = cnt;
            cnt = 0;
        }
    if (cnt > ans)
        ans = cnt;
    cout << ans << endl;
}