function main()
    w = readline()
    d = zeros(Int,26)
    for c in w
        d[Int(c)-96] += 1
    end
    println(count(iseven, d)==26 ? "Yes" : "No")
end

main()