using CairoMakie
function triangular_wave(t)
    a=4*sign(cos(t*2*pi))
    if mod(t,1) == 0
            y=0
    elseif mod(t,1)<1/4
        y=a*mod(t,1)
    elseif mod(t,1)>1/4 && mod(t,1)<3*1/4
        y=a*mod(t,1)+2
    elseif mod(t,1)==1/4 
        y=1
    elseif mod(t,1)==3/4 
        y=-1
    else
        y=a*mod(t,1)-4
    end
    return y
end

t=-1:0.01:3;
T=1
ampl=1
#wartosc=[]
DC=0

#for x in t
#    y=ramp_wave(x,ampl,T,DC)
#    push!(wartosc,y)
#end
wartosc=triangular_wave.(t)
lines(t,wartosc)
