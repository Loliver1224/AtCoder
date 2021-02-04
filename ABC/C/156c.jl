parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    X = readInts()

    ans = 10^9
    for P=minimum(X):maximum(X)
        v = 0
        for x in X
            v += (x - P)^2
        end
        ans = min(ans, v)
    end
    println(ans)
end

main()