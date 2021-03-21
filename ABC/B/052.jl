parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    S = readline()

    x = 0
    ans = 0
    for c in S
        if c == 'I'
            x += 1
            ans = max(ans, x)
        elseif c == 'D'
            x -= 1
        end
    end
    println(ans)
end

main()