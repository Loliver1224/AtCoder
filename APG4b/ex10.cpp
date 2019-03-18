#include <bits/stdc++.h>
using namespace std;

int main(){
    int A, B;
    cin >> A >> B;

    int i = 0;
    while (i < 2){
        int j = 0;
        if (i){
            cout << "B:";
            while (j < B){
                cout << ']';
                j++;
            }
        }else{
            cout << "A:";
            while (j < A){
                cout << ']';
                j++;
            }
        }
        cout << endl;
        i++;
    }
}