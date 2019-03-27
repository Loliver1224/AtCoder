#include <bits/stdc++.h>
using namespace std;

int H, W;
vector<vector<char>> maze(500, vector<char>(500));
vector<vector<bool>> reached(500, vector<bool>(500, false));

// 再帰関数で迷路を解きます
void search(int x, int y){
    if (x < 0 || x >= H || y < 0 || y >= W || maze.at(x).at(y) == '#')
        return;
    if (reached.at(x).at(y))
        return;
    reached.at(x).at(y) = true;

    search(x + 1, y);
    search(x - 1, y);
    search(x, y + 1);
    search(x, y - 1);
}

int main(){
    cin >> H >> W;
    int sx, sy, gx, gy;
    for (int i = 0; i < H; i++)
        for (int j = 0; j < W; j++){
            cin >> maze.at(i).at(j);
            if (maze.at(i).at(j) == 's'){
                sx = i;
                sy = j;
            }else if (maze.at(i).at(j) == 'g'){
                gx = i;
                gy = j;
            }
        }
    search(sx, sy);
    cout << (reached.at(gx).at(gy) ? "Yes" : "No") << endl;
}