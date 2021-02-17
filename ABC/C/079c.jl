parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N,M = readInts()
    hasBegin = fill(false, N)
    hasEnd = fill(false, N)
    for i=1:M
        a,b = readInts()
        if a == 1
            hasBegin[b] = true
        end
        if b == N
            hasEnd[a] = true
        end
    end
    ans = false
    for i=2:N-1
        if hasBegin[i] && hasEnd[i]
            ans = true
            break
        end
    end
    println(ans ? "POSSIBLE" : "IMPOSSIBLE")
end

main()