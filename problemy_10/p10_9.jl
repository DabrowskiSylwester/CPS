using LinearAlgebra

function fir_i_LS(M::Integer, f::Vector, a::Vector, w::Vector)::Vector
    K=length(f)
    Ω=2π.*f
    F=[cos(Ω[k]*n) for k in 1:K, n in 0:M]
    W=Diagonal(w)
    h=pinv(F'*W*F) * (F'*W*a)
    return h
end

M = 20  # rząd filtru
f = [0.0, 0.2, 0.3, 0.5]         # znormalizowane częstotliwości
a = [1.0, 1.0, 0.0, 0.0]         # idealna charakterystyka
w = [1.0, 1.0, 10.0, 10.0]       # wagi: większa waga → lepsze dopasowanie

h = fir_i_LS(M, f, a, w)

using CairoMakie

scatter(h)