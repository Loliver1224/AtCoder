parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    a = sort(readInts(), rev=true)
    ans = 0
    for i=1:2:length(a)
        ans += a[i]
        if i+1 <= length(a)
            ans -= a[i+1]
        end
    end
    println(ans)
end

main()