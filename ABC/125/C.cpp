#include <bits/stdc++.h>
using namespace std;
int main(){
    int n, s;
    cin>>n;
    vector<int> a(n);
    for(int i=0; i<n; i++)
        cin>>a[i];
    for(int i=0; i<n; i++)
        for(int j=0; j<n-i-1; j++)
            if(a.at(j)>a.at(j+1))
                swap(a.at(j), a.at(j+1));
    s = a.at(n-1) - a.at(0);
    /*for(int i=1; i<n-2; i++)
        if(a.at(i)%s)
            a.at(i) = a.at(0);*/
    cout<<s ? a.at(n-1) : s<<endl;

}