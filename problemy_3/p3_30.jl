function kaiser(N::Integer, β::Real)::AbstractVector{<:Real}
    function bessel0(x::Real)::Real
        sumval=0.0    
            for k in 1:20    
                sumval += ((x/2)^k/factorial(k))^2
            end
        return 1+sumval
    end
    wK=[bessel0(β*sqrt(1-((n-(N-1)/2)/((N-1)/2))^2))/bessel0(β) for n in 0:N-1]
end
using CairoMakie
okno=kaiser(40,8.6)
scatter(okno)