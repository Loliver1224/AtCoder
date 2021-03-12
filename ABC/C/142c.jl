parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    A = readInts()

    ans = zeros(Int,N)
    for i=1:N
        ans[A[i]] = i
    end
    println(join(ans,' '))
end

main()