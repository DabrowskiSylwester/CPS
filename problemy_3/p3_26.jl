function hanning(N::Integer)::AbstractVector{<:Real}
    return  [0.5*(1-cos(2π*n/(N-1))) for n in 0:N-1]
end
using CairoMakie
N=10
okno=hanning(31)
scatter(okno)