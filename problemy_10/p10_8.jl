function firwin_lp_kaiser_I(f0::Real,Δf::Real,δ::Real)::Vector
    #Steps from Zielinsky's book 1: arguments
    #2:
    A=-20log10(δ)
    #3:
    if A<21
        β=0
    elseif 21<=A<=50
        β=0.5842*(A-21)^0.4+0.07886*(A-21)
    else
        β=0.1102*(A-8.7)
    end
    #4:
    N=(A-7.95)/14.36/Δf
    N = mod(ceil(N),2)==0 ? Int(ceil(N))+1 : Int(ceil(N))
    #5:
    wK=kaiser(N,β)
    #6:
    h=firwin_lp_Ip(N,f0)
    hw=h.*wK
    return hw
 end
 function firwin_lp_Ip(M::Integer, f0::Real)::Vector
    return [2*f0*sinc(2*f0*(n-M÷2)) for n in 0:M-1] 
 end

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

f0 = 0.2
Δf = 0.05
δ = 0.01

h = firwin_lp_kaiser_I(f0, Δf, δ)
f = Figure()
Axis(f[1,1], title="Filtr LP z oknem Kaisera")
scatter!(0:length(h)-1, h)
f
