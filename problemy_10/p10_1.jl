function firwin_lp_I(M::Integer, f0::Real)::Vector
   return [2*f0*sinc(2*f0*n) for n in -M÷2:M÷2]
end

M = 20
f0 = 0.2  # np. 20% Nyquista
h = firwin_lp_I(M, f0)

using CairoMakie
scatter(0:20,h)