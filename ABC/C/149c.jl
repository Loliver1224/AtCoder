parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    X = readInt()

    while true
        flg = true
        for i=2:√X
            if X % i == 0
                flg = false
                break
            end
        end
        if flg
            println(X)
            break
        else
            X += 1
        end
    end
end

main()