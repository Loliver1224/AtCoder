function main()
    S = readline()

    ans = 1 << 60
    for i=1:length(S)-2
        n = parse(Int, S[i:i+2])
        ans = min(ans, abs(753 - n))
    end
    println(ans)
end

main()