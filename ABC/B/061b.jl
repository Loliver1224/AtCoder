parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N, M = readInts()
    G = zeros(Int, N)
    for i=1:M
        a, b = readInts()
        G[a] += 1; G[b] += 1
    end
    for i=1:N
        println(G[i])
    end
end

main()