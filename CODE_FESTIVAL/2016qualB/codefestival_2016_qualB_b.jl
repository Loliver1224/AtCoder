parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N,A,B = readInts()
    S = readline()
    pass_cnt = 0
    b_cnt = 0
    for i=1:N
        if S[i] == 'a'
            if pass_cnt < A + B
                println("Yes")
                pass_cnt += 1
                continue
            end
        elseif S[i] == 'b'
            if pass_cnt < A + B && b_cnt < B
                println("Yes")
                pass_cnt += 1
                b_cnt += 1
                continue
            end
        end
        println("No")
    end
end

main()