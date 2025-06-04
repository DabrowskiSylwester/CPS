function firwin_diff(M::Integer)::Vector
    return [n==0 ? 0.0 : cos(π*n)./n for n in -M÷2:M÷2]
end

using CairoMakie

M = 51
h = firwin_diff(M)

f = Figure()
Axis(f[1,1], title="Filtr FIR różniczkujący")
scatter!(-M÷2:M÷2, h)
f