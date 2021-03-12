parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
parseFloat(s)=parse(Float64,s)
readFloats()=readline()|>split.|>parseFloat

function main()
    N = readInt()
    v = readFloats()
    sort!(v)
    while length(v) > 1
        a = popfirst!(v)
        b = popfirst!(v)
        pushfirst!(v, (a+b)/2)
    end
    println(v[1])
end

main()