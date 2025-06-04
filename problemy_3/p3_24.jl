function rect(N::Integer)::AbstractVector
    return ones(Float64,N)
end

prostokat=rect(10)
@show prostokat