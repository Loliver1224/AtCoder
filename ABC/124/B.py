input()
cnt,mx=0,0
for h in map(int, input().split()):
    if h>=mx:
        cnt+=1
        mx=h
print(cnt)