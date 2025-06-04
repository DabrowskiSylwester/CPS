function triang(N::Integer)::AbstractVector
    nn=0:N-1
    result=@. 1-(2*abs(nn-(N-1)/2))/(N-1)
    return result
end
using CairoMakie
N=10
okno=triang(11)
scatter(okno)