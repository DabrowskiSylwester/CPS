function silnia_iter(x)
    wynik = 1
    for i in 1:x
        wynik = wynik*i
    end
    return wynik
end

wynik = silnia_iter(5)
@show wynik
wynik = silnia_iter(0)
@show wynik
wynik = silnia_iter(10)
@show wynik