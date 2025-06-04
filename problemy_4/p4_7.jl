function running_energy(signal,M)
    vector_ren=[] 
    l=length(signal)
    last_ind=l-2*M
    for ind = 1:last_ind
        s=signal[ind:(ind+2*M)]
        r_en=energy(s)
        push!(vector_ren,r_en)
    end
    return vector_ren
end
t=0:0.0001:0.02
signal=sin.(2*pi*50*t)
M=10
display(length(t))
y=running_energy(signal,M)
println("Real signal: ")
display(y)
signal_com=exp.(im*2*pi*50*t)
signal_com=2*cos.(2*pi*50*t)+im.*sin.(2*pi*50*t)
yc=running_energy(signal_com,M)
println("Complex signal: ")
display(yc)