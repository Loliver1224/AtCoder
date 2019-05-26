import collections
N = int(input())
A = list(map(int, input().split()))
B = [A[0]]
[B.append(A[i] + B[i-1]) for i in range(1,N)]
cnt = collections.Counter(B)
ans = [i*(i-1)//2 for i in cnt.values()]
print(sum(ans)+cnt[0])
