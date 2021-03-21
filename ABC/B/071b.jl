function main()
    S = readline()

    d = zeros(Int,26)
    for c in S
        d[Int(c)-96] += 1
    end
    ans = findfirst(x->x==0, d)
    if isnothing(ans)
        println("None")
    else
        println(Char(ans+96))
    end
end

main()