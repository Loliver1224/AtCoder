parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    println(sum(1:N-1))
end

main()