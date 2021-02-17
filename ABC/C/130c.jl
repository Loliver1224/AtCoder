parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    W,H,x,y = readInts()

    mul = 2x==W && 2y==H ? 1 : 0
    println(W*H/2,' ', mul)
end

main()