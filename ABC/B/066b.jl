function main()
    S = readline()

    for i=length(S)-1:-1:2
        mid = i ÷ 2
        if iseven(i) && S[1:mid] == S[mid+1:i]
            println(i)
            break
        end
    end
end

main()