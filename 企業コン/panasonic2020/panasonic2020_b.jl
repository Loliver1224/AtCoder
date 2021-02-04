parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    H,W = readInts()
    if H == 1 || W == 1
        println(1)
    else
        println(ceil(Int, H * W / 2))
    end
end

main()