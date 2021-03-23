parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    B = readInts()
    sum_A = B[1]
    for i=2:N-1
        sum_A += min(B[i], B[i-1])
    end
    println(sum_A + B[end])
end

main()