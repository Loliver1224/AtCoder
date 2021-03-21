function main()
    S = readline()
    d = zeros(Int,26)
    for c in S
        i = Int(c) - 97
        if d[i] > 0
            println("no")
            exit(0)
        end
        d[i] += 1
    end
    println("yes")
end

main()