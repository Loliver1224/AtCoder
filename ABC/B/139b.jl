parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    A,B = readInts()
    ans = 0
    cnt = 1
    while cnt < B
        cnt += A - 1
        ans += 1
    end
    println(ans)
end

main()