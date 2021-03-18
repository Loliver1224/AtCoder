parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

visited = zeros(Bool,8)
perm = Vector{Vector{Int}}()

function dfs(arr, pos, n)
    if pos == n
        push!(perm, arr)
        return
    end
    for i=1:n
        if !visited[i]
            visited[i] = true
            dfs(vcat(arr, i), pos+1, n)
            visited[i] = false
        end
    end
end

function main()
    N = readInt()
    P = readInts()
    Q = readInts()
    dfs(Vector{Int}(), 0, N)
    a = findfirst(x -> x==P, perm)
    b = findfirst(x -> x==Q, perm)
    println(abs(a - b))
end

main()