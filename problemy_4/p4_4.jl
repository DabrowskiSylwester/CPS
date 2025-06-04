function power(signal)
    return energy(signal)/length(signal)
end
t=0:0.001:1/50
signal=sin.(2*pi*50*t)
y=power(signal)
println("Real signal: ", y)
signal_com=exp.(im*2*pi*50*t)
#signal_com=2*cos.(2*pi*50*t)+im.*sin.(2*pi*50*t)
yc=power(signal_com)
println("Complex signal: ", yc)