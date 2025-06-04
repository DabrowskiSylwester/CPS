function mean(signal)
    value=1/(length(signal))*sum(signal)
    return value
end
t=0:0.001:1/50
signal=sin.(2*pi*50*t).+3
y=mean(signal)
println("Real signal: ", y)
signal_com=exp.(im*2*pi*50*t)
#signal_com=2*cos.(2*pi*50*t)+im.*sin.(2*pi*50*t)
yc=mean(signal_com)
println("Complex signal: ", yc)
