parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N, D = readInts()
    X = [readInts() for _=1:N]

    cnt = 0
    for i=1:N
        for j=i+1:N
            if isinteger(√sum([(X[i][d]-X[j][d])^2 for d=1:D]))
                cnt += 1
            end
        end
    end
    println(cnt)
end

main()