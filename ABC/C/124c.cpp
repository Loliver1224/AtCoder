#include <bits/stdc++.h>
using namespace std;
int main(){
    string s;
    cin>>s;
    int cnt=0;
    for(int i=1; s[i]; i++){
        if(s[i-1] == s[i]){
            s[i] = s[i]=='0' ? '1' : '0';
            cnt++;
        }
    }
    cout<<cnt<<endl;
}