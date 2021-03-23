parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    A, B, C, K = readInts()
    println(iseven(K) ? A-B : B-A)
end

main()