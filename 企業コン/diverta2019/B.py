R,G,B,N=map(int, input().split())
ans=0
for r in range(N//R + 1):
    for g in range((N-R*r)//G + 1):
        if not(N-R*r-G*g)%B:
            ans+=1
print(ans)
