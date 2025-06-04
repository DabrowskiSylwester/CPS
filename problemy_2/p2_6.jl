function palindrom(ciag)
    ciagr = odwr(ciag)
    ciagr = String(ciagr)
        if ciag == ciagr
            return true
        else
            return false
        end
end
# z p2_5
function odwr(ciag)
    tab = ciag |> collect
    tab = tab[end:-1:begin]
    return tab=String(tab)
end

wynik = palindrom("abccba")
@show wynik

wynik = palindrom("abcdecba")
@show wynik
