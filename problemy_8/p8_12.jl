using CairoMakie
function dft(signal)
    N = length(signal)
    w_N = exp(-im*2*pi/N)
    #signal=signal'

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



function psd(g::AbstractVector{<:Complex}, w::AbstractVector{<:Real}, fp::Real)
    #Steps in Zielinsky's book 1:
    N=length(g)
    M=N÷4 #arbitrary, M is number of first 
    K=N+(M-1)
    #zeros padding 2:
    g=vcat(g,zeros(ComplexF64, M-1))
    #dft 3:
    Xk=dft(g)
    #idft (autocorrelation) 4:
    Rxx=idft(Xk.*conj.(Xk))
    #signal s(n) 5:
    s=zeros(Float64, K)
    for n in 0:K-1
        if ((n>=0) && (n<M))
            s[n+1]=real(Rxx[n+1])*w[n+1]
        elseif ((n>=M) && (n<=K-M))
            s[n+1]=0
        else
            s[n+1]=real(Rxx[K-n+1])*w[K-n+1]
        end 
    end
    #DFT 6:
    Pxx=dft(s)
    f=(0:K-1) .* (fp/K)

    fig = Figure()
    ax = Axis(fig[1, 1], xlabel="Częstotliwość [Hz]", ylabel="PSD")
    scatter!(ax, f, abs.(Pxx))
    display(fig)
    return real(Pxx)
end


# Przykładowy sygnał
N = 128
g = randn(ComplexF64, N)

# Okno Blackmana
M = N ÷ 4
w = 0.42 .- 0.5 .* cos.(2π .* (0:M-1) ./ (M-1)) .+ 0.08 .* cos.(4π .* (0:M-1) ./ (M-1))
w = vcat(w, zeros(N - 1))  # Długość K = N + M - 1

fp = 1.0  # Próbkowanie

Pxx = psd(g, w, fp)

