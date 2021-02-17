parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    ans = 1
    for i=1:6
        if ans * 2 > N
            break
        end
        ans *=  2
    end
    println(ans)
end

main()