N = int(input())
ans=A=B=BA=0
for _ in range(N):
    S=input()
    ans+=S.count("AB")
    if S[0]=='B'and S[-1]=='A':BA+=1
    elif S[0]=='B':B+=1
    elif S[-1]=='A':A+=1
if BA!=0:
    ans+= BA if A+B>0 else BA-1
print(ans+min(A,B))
