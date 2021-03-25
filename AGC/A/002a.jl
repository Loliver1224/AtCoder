parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    a, b = readInts()

    if a ≤ 0 ≤ b
        println("Zero")
    elseif a > 0 || (b-a)%2==1
        println("Positive")
    else
        println("Negative")
    end
end

main()