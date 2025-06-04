function chebwin(N::Integer, α::Real)::AbstractVector{<:Real}
    function chebpoly(Nc::Integer,x::Real)::Real
        return abs(x)<=1 ? cos((Nc-1)*acos(x)) : cosh((Nc-1)*acosh(x)) 
    end
    γ=10^(-α/20)
    β=cosh(1/(N-1)*acosh(1/γ))
    M=(N-1)÷2
    wDC=zeros(Float64, N)
    for m in -M:M
        sumval=0.0
        for k in 1:M
            sumval += chebpoly(N-1, β*cos(π*k/N)) * cos(2π*k*m/N)
        end
        wDC[m+M+1]=1/γ+2*sumval
    end
    wDC ./= wDC[mod(N,2)==0 ? M+1 : M] #normalization
    return wDC
end
using CairoMakie
okno=chebwin(40,40)
scatter(okno)