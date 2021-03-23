parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    H, W = readInts()
    println("#"^(W+2))
    for i=1:H
        println("#", readline(), "#")
    end
    println("#"^(W+2))
end

main()