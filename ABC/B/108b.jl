parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    x1, y1, x2, y2 = readInts()
    xd, yd = x2 - x1, y2 - y1

    println("$(x2-yd) $(y2+xd) $(x1-yd) $(y1+xd)")
end

main()