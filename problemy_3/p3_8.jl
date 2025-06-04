using CairoMakie
function ci_literka_U(t,T)
    if t >= 0 && t <= T/100
        wynik= (1*T*100+1)/100
    elseif t>T-T/100 && t < T
        wynik=(1*T*100+(-1*T))/100
    else
        wynik=0
    end
    return wynik
end

t=-2:0.01:10;
T=2
ampl=1.5
wartosc=[]
for x in t
    y=ci_literka_U(x,T)
    push!(wartosc,y)
end

lines(t,wartosc)