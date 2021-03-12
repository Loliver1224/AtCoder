parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    a = zeros(Int,N)
    for i=1:N
        a[i] = readInt()
    end
    now = 1; cnt = 0
    while true
        if now == 2
            println(cnt)
            break
        elseif cnt >= N
            println(-1)
            break
        end
        cnt += 1
        now = a[now]
    end
end

main()