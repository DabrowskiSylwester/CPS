using CairoMakie

function pulse_wave_bl(t::Real;A=1::Real,T=1::Real,B=10::Real)
    signal=0
    n=1 #index of harmonic
    while (omega=2*pi*n/T)<2*pi*B
        signal += sin( omega*t)/n
        n += 2
    end
    signal*=4*A/pi
    return signal
end

ts = 0:0.001:1  # zakres czasu
ys = [pulse_wave_bl(t; A=1, T=1, B=10) for t in ts]

lines(ts, ys, axis=(xlabel="t", ylabel="ramp_wave_bl(t)", title="Band-limited ramp wave"))