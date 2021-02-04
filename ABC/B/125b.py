n=int(input())
v = list(map(int, input().split()))
c = list(map(int, input().split()))
for a, b in v, c:
    tmp = a - b
    if tmp > 0:
        sum += tmp
print(sum)