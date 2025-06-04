using CairoMakie
function ci_triangle(t,T)
    if t >= 0 && t <= T/2
        wynik= t
    elseif t>T/2 && t < T
        wynik=-1*t+T
    else
        wynik=0
    end
    return wynik
end

t=-2:0.01:10;
T=5

wartosc=[]
for x in t
    y=ci_triangle(x,T)
    push!(wartosc,y)
end

scatter(t,wartosc)