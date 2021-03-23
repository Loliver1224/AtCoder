function main()
    A, B = parse.(BigInt,readlines())
    println(A>B ? "GREATER" : A<B ? "LESS" : "EQUAL")
end

main()