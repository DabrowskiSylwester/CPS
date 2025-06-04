function odwr(ciag)
    #tab = ciag |> collect
    #tab = tab[end:-1:begin]
    
    #return tab=String(tab)
    return ciag=ciag[end:-1:begin]
end

wyn = odwr("abcdefgh")
@show wyn
