parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    H = readInts()
    ans = -1
    cnt = 0
    for i=1:N-1
        if H[i+1] <= H[i]
            cnt += 1
        else
            ans = max(ans, cnt)
            cnt = 0
        end
    end
    println(max(ans, cnt))
end

main()