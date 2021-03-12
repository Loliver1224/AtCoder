parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N, M, X = readInts()
    A = readInts()

    left = count(<(X), A)
    println(min(left, M-left))
end

main()