function filtfilt(b::Vector, a::Vector, x::Vector)::Vector
    y_fwd_filt = lti_filter(b, a, x)
    y_rvs = reverse(y_fwd_filt)
    y_rvs_filt = lti_filter(b, a, y_rvs)
    return reverse(y_rvs_filt)
end


b = [0.2, 0.2, 0.2]           # filtr uśredniający (FIR)
a = [1.0]                     # brak sprzężenia (FIR)
x = [1.0, 2.0, 3.0, 4.0, 5.0]

y = lti_filter(b, a, x)
println(y)