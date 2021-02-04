#include <bits/stdc++.h>
using namespace std;
int main(){
    int a,b,k;
    cin >> a >> b >> k;
    vector<int> v(1,1);
    for(int i=2; i<=a; i++)
        if(a%i==0 && b%i==0)
            v.push_back(i);
    cout << v.at(v.size()-k) << endl;
}