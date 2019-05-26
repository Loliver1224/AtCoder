input()
s=list(input())
b=0
w=s.count('.')
ans=w
for i in s:
    if i=='#':b+=1
    else:w-=1
    ans=min(b+w, ans)
print(ans)
