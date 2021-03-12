parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    K, N = readInts()
    A = readInts()

    dir = []
    for i=1:N
        if i==N
            push!(dir, K-A[N]+A[1])
        else
            push!(dir, A[i+1] - A[i])
        end
    end
    sort!(dir)
    pop!(dir)
    println(sum(dir))
end

main()