function silnia_rek(x)
    if x == 0
        return 1
    else
        return x*silnia_rek(x-1)
    end
end

wynik = silnia_rek(5)
wynik = silnia_rek(0)
@show wynik
wynik = silnia_rek(10)