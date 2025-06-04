using CairoMakie
function dtft(f, signal, fs)
    N = length(signal)
    Xf = 0.0 + 0.0im  # inicjalizacja jako liczba zespolona
    for n in 0:N-1
        Xf += signal[n+1] * exp(-2im * π * f * n / fs)
    end
    return Xf
end


x = [1.0 + 0im, 2.0 + 0im, 1.0 + 0im, 0.0 + 0im]  

fs = 10.0  # Hz

f=0:10
wyn=abs.(dtft.(f,Ref(x),Ref(fs)))
scatter(f,wyn)




