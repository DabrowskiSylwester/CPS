function eratostenes(x)
    arr = trues(x)
    s=floor(Int, sqrt(x))
    for i in 2:s
        if arr[i]
            arr[i^2:i:end].=false
        end
    end
    fr=Int[]
    for i in 2:x
        if arr[i]
            push!(fr,i)
        end
    end
    return fr
end

pier = eratostenes(97)
@show pier
@show eratostenes(1000)

function pierwsza(x)
    zbior = eratostenes(x)
    if x in zbior
        return true
    else
        return false
    end
end

a1 = pierwsza(98)
a2 = pierwsza(97)
a3 = pierwsza(1)
@show a1
@show a2
@show a3