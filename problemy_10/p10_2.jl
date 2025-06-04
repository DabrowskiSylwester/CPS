function firwin_hp_I(M::Integer, f0::Real)::Vector
    return [kronecker(n)-2*f0*sinc(2*f0*n) for n in -M÷2:M÷2]
 end
 kronecker(n::Integer)= n==0 ? 1 : 0
# Parametry
M = 20
f0 = 0.2
h = firwin_hp_I(M, f0)

using CairoMakie
f = Figure()
Axis(f[1,1], title="Współczynniki filtru HP FIR")
scatter!(0:M, h)
f