parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N = readInt()
    dp = zeros(Int, (N, 3))
    dp[1,:] .= readInts()
    for i=2:N
        a, b, c = readInts()
        dp[i,1] = max(dp[i-1,2], dp[i-1,3]) + a
        dp[i,2] = max(dp[i-1,1], dp[i-1,3]) + b
        dp[i,3] = max(dp[i-1,1], dp[i-1,2]) + c
    end
    println(maximum(dp[end,:]))
end

main()