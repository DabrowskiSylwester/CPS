function fftfreq(N::Integer, fp::Real)::AbstractVector{<:Real}
    return [fp/N*k for k in 0:N-1]
end

N=8
fp=1000
f=fftfreq(N,fp)
@show f