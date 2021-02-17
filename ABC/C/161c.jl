parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N,K = readInts()

    modK = N % K
    println(min(modK, K-modK))
end

main()