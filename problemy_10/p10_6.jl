function firwin_bp_II(M::Integer, f1::Real, f2::Real)::Vector
    return [2*f2*sinc(2*f2*n)-2*f1*sinc(2*f1*n) for n in -M÷2:M÷2]
 end