function firwin_bp_I(M::Integer, f1::Real, f2::Real)::Vector
    return [2*f2*sinc(2*f2*n)-2*f1*sinc(2*f1*n) for n in -M÷2:M÷2]
 end

# Parametry
M = 20
f1 = 0.2
f2=0.4
h = firwin_bp_I(M, f1,f2)

using CairoMakie
f = Figure()
Axis(f[1,1], title="Współczynniki filtru HP FIR")
scatter!(0:M, h)
f