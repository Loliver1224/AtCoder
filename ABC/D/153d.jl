parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    H = readInt()
    depth = 0
    while H > 0
        H ÷= 2
        depth += 1
    end
    println(2^depth-1)
end

main()