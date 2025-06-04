function lti_amp(f::Real, b::Vector,a::Vector)::Real
    M=length(b)
    K=length(b)
    num=sum(b[m+1]*exp(-1im*2π*m*f) for m in 0:M-1)
    den=sum(a[k+1]*exp(-1im*2π*k*f) for k in 0:K-1)
    H=num/den
    return abs(H)
end

b = [1.0, -1.0]
a = [1.0, -0.9]
frequencies = range(0, stop=0.5, length=500)
amps = [lti_amp(f, b, a) for f in frequencies]

using CairoMakie
lines(frequencies, amps)