#include <bits/stdc++.h>
using namespace std;

bool symmetric(char a, char b){
    if(a=='i' && b=='i')
        return true;
    if(a=='w' && b=='w')
        return true;
    if(a=='(' && b==')')
        return true;
    if(a==')' && b=='(')
        return true;
    return false;
}
int main(){
    string s;
    cin >> s;
    int len = s.size();
    int cnt = (len+1) / 2;
    for(int i=0; i<(len+1)/2; i++)
        if(symmetric(s.at(i), s.at(len-1-i)))
            cnt--;
    cout << cnt << endl;
}