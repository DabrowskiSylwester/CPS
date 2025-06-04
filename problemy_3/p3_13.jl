using CairoMakie
function pulse_wave(t,wyp)
    if mod(t,1)<wyp
        wynik=1
    else
        wynik=0
    end
    return wynik
end

t=0:0.01:3;
T=1
ampl=1
wartosc=[]
DC=0
wyp=0.66

wartosc=pulse_wave.(t,wyp)

lines(t,wartosc)
