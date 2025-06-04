function rand_signal_bl(f1::Real, f2::Real)
    f = f1 .+ rand(1000) .* (f2 - f1)
    ϕ = -π .+ rand(1000) * 2π
    A = randn(1000)
    A = A ./ sqrt(0.5 * sum(A .^ 2))
    return t -> sum(A .* sin.(2π * f .* t .+ ϕ))
end