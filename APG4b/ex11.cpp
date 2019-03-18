#include <bits/stdc++.h>
using namespace std;

int main(){
    int N, A;
    cin >> N >> A;

    for(int i=0; i<N; i++){
        char op;
        int B;
        cin >> op >> B;
        if(op=='+')
            A += B;
        else if(op=='-')
            A -= B;
        else if(op=='*')
            A *= B;
        else if(op=='/' && B)
            A /= B;
        else{
            cout << "error" << endl;
            break;
        }
        cout << i+1 << ':' << A << endl;
    }
}