function blackman(N::Integer)::AbstractVector{<:Real}
    return [0.42-0.5*cos(2π*n/(N-1))+0.08*cos(4π*n/(N-1)) for n in 0:N-1]
end
using CairoMakie

okno=hamming(31)
scatter(okno)