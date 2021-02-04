#include <bits/stdc++.h>
using namespace std;

int main(){
    int n,k,cnt=0,ans=0;
    cin>>n>>k;
    string s;
    cin>>s;
    while(k--){
        int i=0,l,r;
        while(s[i]){
            if(s[i]=='0'){
                l=i;
                while(s[i]){
                    if(s[i]!='0'){
                        r=i-1;
                        goto swp;
                    }
                    i++;
                }
            }
            i++;
        }
        swp:
        for(; l<=r; l++)
            if(s[l]=='0')
                s[l] =  '1';
    }
    for(int i=0; s[i]; i++)
        if(s[i]=='1' && s[i+1]=='1')
            cnt++;
        else{
            ans = max(ans,cnt+1);
            cnt=0;
        }
    cout<<ans<<endl;
}