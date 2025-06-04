function peak2peak(signal)
    val_max=maximum(signal)
    val_min=minimum(signal)
    return abs(val_max-val_min)
end
t=0:0.001:1/50
signal=sin.(2*pi*50*t).+3
y=peak2peak(signal)
println(y)