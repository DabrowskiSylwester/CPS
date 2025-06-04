using CairoMakie
function interpolate(m,s,Fs)
    d_t = m[2]-m[1]
    return function f(x)
        return sum(Fs.((x.-m)./d_t).*s)
    end
end
function ci_triangle(t,ampl=1,T=2)
    if t >= 0 && t <= T/2
        wynik= ampl*t
    elseif t>T/2 && t < T
        wynik=-ampl*t+ampl*T
    else
        wynik=0
    end
    return wynik
end

f(x)=ci_triangle(x,1,2)

m=0:0.3:3
s=cos.(m)
inter=interpolate(m,s,f)
x=0:0.01:3
wynik=inter.(x)
scatter(x,wynik)