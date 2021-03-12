parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    d = readInts()
    sd = sort(d)
    l = sd[N÷2]; h = sd[N÷2+1]
    println(h-l)
end

main()