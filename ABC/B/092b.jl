parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    D, X = readInts()
    A = zeros(Int,N)
    for i=1:N
        A[i] = readInt()
    end
    cnt = N
    for i=1:N
        d = 1
        while true
            if d * A[i] + 1 > D
                break
            end
            cnt += 1
            d += 1
        end
    end
    println(cnt + X)
end

main()