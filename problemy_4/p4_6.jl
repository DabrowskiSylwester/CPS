function running_mean(signal,M)
    vector_rmean=Vector{eltype(signal)}() 
    l=length(signal)
    last_ind=l-2*M
    for ind = 1:last_ind
        s=signal[ind:(ind+2*M)]
        r_mean=mean(s)
        push!(vector_rmean,r_mean)
    end
    return vector_rmean
end
t=0:0.0005:0.02
signal=sin.(2*pi*50*t)
M=10
display(length(t))
y=running_mean(signal,M)
println("Real signal: ")
display(y)
signal_com=exp.(im*2*pi*50*t)
#signal_com=2*cos.(2*pi*50*t)+im.*sin.(2*pi*50*t)
yc=running_mean(signal_com,M)
println("Complex signal: ")
display(yc)