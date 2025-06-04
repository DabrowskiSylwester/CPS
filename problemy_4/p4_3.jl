function energy(signal)
    sq=abs.(signal).^2
    return value=sum(sq)
end
t=0:0.001:1/50
signal=sin.(2*pi*50*t)
y=energy(signal)
println("Real signal: ", y)
signal_com=exp.(im*2*pi*50*t)
#signal_com=2*cos.(2*pi*50*t)+im.*sin.(2*pi*50*t)
yc=energy(signal_com)
println("Complex signal: ", yc)