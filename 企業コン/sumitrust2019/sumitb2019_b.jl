parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    ans = ceil(Int, N / 1.08)
    if floor(ans * 1.08) != N
        println(":(")
    else
        println(ans)
    end
end

main()