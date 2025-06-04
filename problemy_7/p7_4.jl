function dft(signal)
    N = length(signal)
    w_N = exp(-im*2*pi/N)
    signal=signal'

    #Matrix W:
    W=ones(ComplexF64,N,N)

    for m in 0:N-1
        for n in 0:N-1
            W[m+1,n+1]=w_N^(m*n)
        end
    end
    
    s=W*signal
    
    return s
end

signal=[2 3 2 1 2 3 2 1]
dt=0.001
wynik=dft(signal)
show(wynik)

