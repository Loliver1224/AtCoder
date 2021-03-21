function main()
    S = readline()
    if length(Set(S)) == length(S)
        println("yes")
    else
        println("no")
    end
end

main()