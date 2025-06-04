function firwin_lp_II(M::Integer, f0::Real)::Vector
    return [2*f0*sinc(2*f0*n) for n in -M÷2:M÷2]
 end
 