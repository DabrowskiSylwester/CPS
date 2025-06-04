function idft(spec)
    N = length(spec)
    w_N = exp(-im*2*pi/N)
    spec=reshape(spec,:,1)

    #Matrix W:
    W=ones(ComplexF64,N,N)

    for m in 0:N-1
        for n in 0:N-1
            W[m+1,n+1]=w_N^(m*n)
        end
    end
    
    s=W^(-1)*spec
    
    return round.(s,digits=4)
end

spec=[8 0 4 0 0 0 4 0]
dt=0.001
wynik=idft(spec)
show(wynik)

