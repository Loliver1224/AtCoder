a,b=map(int, input().split())
if a>=13: ans = b
elif 6<=a<=12: ans = b//2
else: ans = 0
print(ans)
