parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N,M = readInts()
    X = readInts()
    if N >= M
        println(0)
        exit(0)
    end
    sort!(X)
    v = zeros(M-1)
    for i=1:M-1
        v[i] = abs(X[i+1] - X[i])
    end
    println(Int(sum(sort(v)[1:M-N])))
end

main()