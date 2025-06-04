function firwin_bs_I(M::Integer, f1::Real, f2::Real)::Vector
    return [kronecker(n)-(2*f2*sinc(2*f2*n)-2*f1*sinc(2*f1*n)) for n in -M÷2:M÷2]
 end
 kronecker(n::Integer)= n==0 ? 1 : 0
# Parametry
M = 20
f1 = 0.2
f2 = 0.4
h = firwin_bs_I(M, f1, f2)

using CairoMakie
f = Figure()
ax = Axis(f[1,1], title="Współczynniki filtru pasmowozaporowego FIR")
scatter!(ax, -M÷2:M÷2, h)
f