parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt

function main()
    N = readInt()
    ans = true
    hist = []
    c = ""
    for i=1:N
        W = readline()
        if i > 1 && W[1] != c || W in hist
            ans = false
            break
        end
        c = W[end]
        push!(hist, W)
    end
    println(ans ? "Yes" : "No")
end

main()