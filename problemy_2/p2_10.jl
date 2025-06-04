
function cyfry_z_liczby(liczba)
    tab = []
    for i in 1:6
        x = liczba % 10^i
        liczba = liczba - x
        puszek = Int(x/(10^(i-1)))
        push!(tab, puszek)
    end
    tab=(tab[end:-1:begin])
end
#@show cyfry_z_liczby(12345)
function suma_do_piatej(liczba)
    tab = cyfry_z_liczby(liczba)
    return wynik = sum(tab.^5) 
end
function dobre_liczby()
    maks=(9^5)*6
    result = []
    for i in 1:maks
        if i == suma_do_piatej(i)
            push!(result,i)
        end
    end
    return result
end
@show dobre_liczby()
