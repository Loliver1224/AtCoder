function main()
    A = parse.(Int,readlines())

    w = zeros(Int,5)
    for i=1:5
        w[i] = (10 - A[i] % 10) % 10
    end
    println(sum(A) + sum(w) - maximum(w))
end

main()