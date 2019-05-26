n,m=map(int, input().split())
maxl,minr=0,n
for _ in range(m):
    l,r=map(int, input().split())
    maxl = max(maxl, l)
    minr = min(minr, r)
print(minr - maxl + 1)
