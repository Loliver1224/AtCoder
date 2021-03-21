parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    A = readlines().|>parseInt

    m1, m2 = sort(A)[N-1, N]
    for i=1:N
        println(A[i]==m1 ? m1 : m2)
    end
end

main()