parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    L = zeros(Int,N+1)
    L[1] = 2; L[2] = 1
    for i=3:N+1
        L[i] = L[i-1] + L[i-2]
    end
    println(L[end])
end

main()