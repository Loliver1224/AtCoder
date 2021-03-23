parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function q()
    println("No");exit(0)
end

function main()
    A, B = readInts()
    S = readline()
    if S[A+1] != '-' || length(S) != A+B+1
        q()
    end
    for i=1:length(S)
        if i != A+1 && S[i] == '-'
            q()
        end
    end
    println("Yes")
end

main()