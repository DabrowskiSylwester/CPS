function amplitude_spectrum(g::AbstractVector{<:Complex}, w::AbstractVector{<:Real})
    return abs.(dft((g.*w)'))
end

g=[1+1im, 2+2im, 3+3im]
w=[-3, -2, -1]
w=Float64.(w)

as=amplitude_spectrum(g,w)
@show as



