using CairoMakie
function square_wave(t)
    wynik=sign(sin(t*2*pi))
    return wynik
end

t=0:0.01:10;
T=1
ampl=1
wartosc=[]
DC=0
for x in t
    y=square_wave(x)
    push!(wartosc,y)
end

lines(t,wartosc)
