parseInt(s)=parse(Int,s)
readInts()=readline()|>split.|>parseInt

function main()
    H, W = readInts()
    G = readlines()
    dx = [ 0,  1, 1, 1, 0, -1, -1, -1]
    dy = [-1, -1, 0, 1, 1,  1,  0, -1]

    for h=1:H
        for w=1:W
            if G[h][w] == '.'
                cnt = 0
                for (x, y) in zip(dx, dy)
                    if 1≤h+y≤H && 1≤w+x≤W && G[h+y][w+x] == '#'
                        cnt += 1
                    end
                end
                print(cnt)
            else
                print('#')
            end
        end
        println()
    end
end

main()