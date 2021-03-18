parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N, A, B = readInts()

    p = N ÷ (A + B)
    q = N % (A + B)
    cnt = A * p
    cnt += min(q, A)
    println(cnt)
end

main()