function rfftfreq(N::Integer,fp::Real)::AbstractVector{<:Real}
    return [fp/N*k for k in 0:N/2]
end

f=rfftfreq(8,1000)
@show f