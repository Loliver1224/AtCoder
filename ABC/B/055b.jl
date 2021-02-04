function main()
    n = parse(Int, readline())
    ans = 1
    for i=1:n
        ans *= i
        ans %= 10^9 + 7
    end
    println(ans)
end

main()