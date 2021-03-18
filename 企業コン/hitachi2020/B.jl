parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    A, B, M = readInts()
    a = readInts()
    b = readInts()

    ans = minimum(a) + minimum(b)
    for i=1:M
        x, y, c = readInts()
        ans = min(ans, a[x] + b[y] - c)
    end

    println(ans)
end

main()