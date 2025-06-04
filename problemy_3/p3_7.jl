using CairoMakie
function ci_literka_M(t,T)
    if t >= 0 && t <= T/2
        wynik= -1*t/2+1
    elseif t>T/2 && t < T
        wynik=1*t/2+(-1*T/4+1/2)
    else
        wynik=0
    end
    return wynik
end

t=-2:0.01:10;
T=2
wartosc=[]
for x in t
    y=ci_literka_M(x,T)
    push!(wartosc,y)
end

lines(t,wartosc)