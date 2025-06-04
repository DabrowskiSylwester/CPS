function SNR(S,N)
    return 10*log(10,S/N)
end

N=2
S=200
println(SNR(S,N))