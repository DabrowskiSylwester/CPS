function goertzel(signal, k)
    signal=reverse(signal) #odwrocenie sygnalu
    N=length(signal)
    
    W_N=exp(-2im*pi*k/N)
    XK=0+0im    
    for l in 1:N-1
        XK+=signal[l]*W_N^(N-l)
    end
    
    return round.(XK, digits=4)
end

signal=[2 1 0 1 2 1 1 1 0 1]
k=7
wynik=goertzel(signal,k)
show(wynik)