parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N, A, B = readInts()

    ans = 0
    for i=1:N
        tmp = sum(parseInt(d) for d in string(i))
        if A ≤ tmp ≤ B
            ans += i
        end
    end
    println(ans)
end

main()