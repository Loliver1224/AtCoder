parseInt(s)=parse(Int,s)
readInt()=readline()|>parseInt
readInts()=readline()|>split.|>parseInt

function main()
    N,M = readInts()
    AC = zeros(Int,N)
    WA = zeros(Int,N)
    wa_cnt = 0
    for line=readlines()
        p,s = split(line)
        p = parseInt(p)
        if AC[p] == 1
            continue
        elseif s == "AC"
            AC[p] = 1
            wa_cnt += WA[p]
        elseif s == "WA"
            WA[p] += 1
        end
    end
    AC = sum(AC)
    println("$AC $wa_cnt")
end

main()