function if_even(x)
    reszta_z_dzielenia = x % 2
    if reszta_z_dzielenia == 0
        return true
    else
        return false
    end
end

a = if_even(56)
println(a)
b=if_even(55)
println(b)