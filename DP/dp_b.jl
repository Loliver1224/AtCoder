parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    N, K = readInts()
    h = readInts()

    dp = fill(1<<60, N)
    dp[begin] = 0
    for i=2:N
        dp[i] = min(dp[i], dp[i-1] + abs(h[i] - h[i-1]))
        for j=2:K
            if i > j
                dp[i] = min(dp[i], dp[i-j] + abs(h[i] - h[i-j]))
            end
        end
    end
    println(dp[end])
end

main()