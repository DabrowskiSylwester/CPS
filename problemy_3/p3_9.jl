using CairoMakie
function ramp_wave(t)
    a=2*sign(sin(t*2*pi))
    if t==0
        y=1
    else
        y=abs(a)*mod(t-0.5,1)
    end
    return y-1
end

t=0:0.01:3;
T=1
ampl=1
#wartosc=[]
DC=0

#for x in t
#    y=ramp_wave(x,ampl,T,DC)
#    push!(wartosc,y)
#end
wartosc=ramp_wave.(t)
lines(t,wartosc)
