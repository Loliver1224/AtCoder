parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N, M = readInts()
    likes = zeros(Int,M)
    for i=1:N
        A = readInts()[2:end]
        for a in A
            likes[a] += 1
        end
    end
    cnt = 0
    for like in likes
        if like == N
            cnt += 1
        end
    end
    println(cnt)
end

main()