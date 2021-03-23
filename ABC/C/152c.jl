parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    P = readInts()

    cnt = 0
    min_P = P[1]
    for i=1:N
        min_P = min(min_P, P[i])
        if P[i] == min_P
            cnt += 1
        end
    end
    println(cnt)
end

main()