function hamming(N::Integer)::AbstractVector{<:Real}
    return [0.54-0.46*cos(2π*n/(N-1)) for n in 0:N-1]
end
using CairoMakie
N=10
okno=hamming(31)
scatter(okno)