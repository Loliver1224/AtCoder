parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    X, N = readInts()
    p = Set(readInts())

    i=0
    while true
        if X-i ∉ p
            println(X - i)
            break
        elseif X+i ∉ p
            println(X + i)
            break
        else
            i += 1
        end
    end
end

main()