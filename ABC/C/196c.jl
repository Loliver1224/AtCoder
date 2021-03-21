parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()

    for i=1:1000001
        if parseInt(string(i)^2) > N
            println(i-1)
            exit(0)
        end
    end
end

main()