parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    A, B = readInts()

    cnt = 0
    for i=A:B
        s = string(i)
        if s == reverse(s)
            cnt += 1
        end
    end
    println(cnt)
end

main()