n=int(input())
sum=0.0
for _ in range(n):
    x,u=input().split()
    if u=='BTC':
        x = float(x) * 380000.0
    sum += float(x)
print(sum)
