parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N, K, Q = readInts()
    P = fill(K-Q, N)
    for i=1:Q
        P[readInt()] += 1
    end
    for p in P
        println(p>0 ? "Yes" : "No")
    end
end

main()