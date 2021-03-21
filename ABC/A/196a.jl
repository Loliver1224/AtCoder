parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    a,b = readInts(); c,d = readInts()
    println(b-c)
end

main()