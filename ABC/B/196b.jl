function main()
    X = readline()
    d = findfirst('.', X)
    println(isnothing(d) ? X : X[1:d-1])
end

main()