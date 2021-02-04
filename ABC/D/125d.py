n=int(input())
a=list(map(int, input().split()))
cnt=sum(d<0 for d in a)
a=[abs(d) for d in a]
print(sum(a)-2*min(a) if cnt%2 else sum(a))
