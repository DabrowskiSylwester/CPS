function power_spectrum(g::AbstractVector{<:Complex}, w::AbstractVector{<:Real})
    x=dft((g.*w)')
    return xpow=abs.(x).^2/length(x)
   
end

g=[1+1im, 2+2im, 3+3im]
w=[-3, -2, -1]
w=Float64.(w)

as=amplitude_spectrum(g,w)
@show as
ps=power_spectrum(g,w)
@show ps



