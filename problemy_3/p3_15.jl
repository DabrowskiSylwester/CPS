using CairoMakie

function ramp_wave_bl(t::Real;A=1::Real,T=1::Real,B=10::Real)
    signal=0
    x=0 #
    n=1 #index of harmonic
    while (om0=2*pi*n/T)<2*pi*B
        x += (-1)^(n+1)*sin(om0*t)/n
        n += 1
    end
    signal*=2*A/pi*x
    return signal
end

ts = 0:0.001:1  # zakres czasu
ys = [ramp_wave_bl(t; A=1, T=1, B=10) for t in ts]

lines(ts, ys, axis=(xlabel="t", ylabel="ramp_wave_bl(t)", title="Band-limited ramp wave"))
