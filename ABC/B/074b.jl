parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    K = readInt()
    x = readInts()

    ans = 0
    for x_i in x
        ans += 2 * min(x_i, abs(K-x_i))
    end
    println(ans)
end

main()