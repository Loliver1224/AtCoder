N, ans, p = int(input()), 0, 1
while p*p < N:
    if N%p==0 and N//p-1>p:
        ans += N//p-1
    p += 1
print(ans)
