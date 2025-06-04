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

function cyfry_z_liczby(liczba)
    tab = []
    for i in 1:6
        x = liczba % 10^i
        liczba = liczba - x
        puszek = Int(x/(10^(i-1)))
        push!(tab, puszek)
    end
    tab=(tab[end:-1:1])
end

function liczba_z_cyfr(tab)
    dlugosc = length(tab)
    wynik = 0
    for i in 1:dlugosc
        wynik = wynik + (tab[i]*10^(dlugosc-i))
    end
    return wynik
end

function cykliczne()
    zbior = eratostenes(100)
    cykliczne=[]
    for i in zbior
        tab = cyfry_z_liczby(i)
        dobrze = [true]
        dlugosc = length(tab)
        tab2=[]
        for j in 1:dlugosc
            tab = [tab[end]; tab[1:end-1]]
            nowa_liczba=liczba_z_cyfr(tab)
            if in(nowa_liczba,zbior)
                push!(tab2,nowa_liczba)
                push!(dobrze,true)
            else
                push!(dobrze,false)
                break
            end
            if in(false,dobrze)
                break
            else
                append!(cykliczne, tab2)
            end
        end
        
    end
    return cykliczne
end

@show cykliczne()



