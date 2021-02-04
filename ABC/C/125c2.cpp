#include <bits/stdc++.h>
using namespace std;
int main(){
    int n, min=1000000000, max=0, s;
    cin >> n;
    vector<int> a(n);
    for(int i=0; i<n; i++)
        cin >> a[i];
    for(int i=0; i<n; i++){
        if(a.at(i) > max)
            max=a.at(i);
        if(a.at(i) < min)
            min=a.at(i);
    }
    s = max-min;
    while(!max%s && !min%s) s--;
    cout << (s ? s : max) << endl;
}