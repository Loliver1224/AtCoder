parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N, x = readInts()
    a = readInts()

    sort!(a)
    cnt = 0
    for i=1:N
        x -= a[i]
        if x < 0 || i == N && x != 0
            break
        end
        cnt += 1
    end
    println(cnt)
end

main()