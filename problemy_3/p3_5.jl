using CairoMakie
function ci_rectangular(t,T)
    if t >= 0 && t <= T
        wynik= 1
    else
        wynik=0
    end
    return wynik
end

t=0:0.01:10;
T=4
wartosc=[]
for x in t
    y=ci_rectangular(x,T)
    push!(wartosc,y)
end

scatter(t,wartosc)