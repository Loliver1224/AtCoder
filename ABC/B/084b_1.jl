parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    A, B = readInts()
    S = readline()
    r = Regex("^\\d{$A}-\\d{$B}")
    println(occursin(r, S) ? "Yes" : "No")
end

main()