parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    A = readlines().|>parseInt

    m1 = 0
    m2 = -1
    for i=1:N
        if m2 < A[i] <= m1
            m2 = A[i]
        elseif A[i] > m1
            m2 = m1
            m1 = A[i]
        end
    end
    for i=1:N
        println(A[i]==m1 ? m2 : m1)
    end
end

main()