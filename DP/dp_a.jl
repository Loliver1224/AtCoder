parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    h = readInts()

    dp = fill(1<<60, N)
    dp[begin] = 0
    for i=2:N
        dp[i] = min(dp[i], dp[i-1] + abs(h[i] - h[i-1]))
        if i > 2
            dp[i] = min(dp[i], dp[i-2] + abs(h[i] - h[i-2]))
        end
    end
    println(dp[end])
end

main()