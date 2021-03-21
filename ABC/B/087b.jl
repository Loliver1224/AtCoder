parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    A = readInt()
    B = readInt()
    C = readInt()
    X = readInt()

    cnt = 0
    for a=0:A, b=0:B
        c = (X - 500a - 100b) ÷ 50
        if 0 <= c <= C
            cnt += 1
        end
    end
    println(cnt)
end

main()