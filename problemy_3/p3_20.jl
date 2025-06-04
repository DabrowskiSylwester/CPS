using CairoMakie

function impulse_reapeter_bl(fun::Function, t1::Real,r2::Real, B::Real)
    T=t2-t1
    omega=2*pi/T
    n_last::Integer=(2*pi*B)÷omega
    #Fourier series:
    N = 1000
    ts = range(t1,t2,length=N+1)
    delta_t=(t2-t1)/N

    function integral_numerical(f::Function, ts:AbstractVector, delta_t::Float64)
        integral=0
        for i in 1:N-1
            integral+=0.5*(f(ts[i])+f(ts[i+1]))*delta_t
        end
        return integral        
    end
    #Fourier coefficients:
    a0=1/T*integral_numerical(g,ts,delta_t)
    an=zeros(Float64,n_last)
    bn=zeros(Float64,n_last)

    for i in 1:n_last
        an[i]=2/T*integral_numerical(t->g(t)*cos(omega*i*t),ts,delta_t)
        bn[i]=2/T*integral_numerical(t->g(t)*sin(omega*i*t),ts,delta_t)
    end
    function fourier_series_output(t::Float64)
        result = a0 / 2
        for n in 1:n_terms
            result += an_coeffs[n] * cos(ω₀ * n * t) + bn_coeffs[n] * sin(ω₀ * n * t)
        end
        return result
    end
    return fourier_series_output
end

ts = 0:0.001:1  # zakres czasu
ys = [triangular_wave_bl(t; A=1, T=1, B=10) for t in ts]

lines(ts, ys, axis=(xlabel="t", ylabel="ramp_wave_bl(t)", title="Band-limited ramp wave"))