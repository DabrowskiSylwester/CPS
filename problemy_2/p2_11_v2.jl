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
    reszta=1
    lim=0
    while !(reszta!=0)
        reszta=div(liczba,10^lim)
        lim += 1
    end
    for i in 1:lim
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

function czy_cykliczna(liczba)

end

function cykliczne(limit)
end

@show cyfry_z_liczby(12345678)