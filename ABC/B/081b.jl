parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    A = readInts()

    ans = 1 << 60
    for a in A
        cnt = 0
        while a % 2 == 0
            a /= 2
            cnt += 1
        end
        ans = min(ans, cnt)
    end
    println(ans)
end

main()