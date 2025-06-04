function lti_filter(b::Vector, a::Vector,g::Vector)::Vector
    N=length(g)
    M=length(b)
    K=length(a)
    y=zeros(Float64, N)

    for n in 1:N
        for m in 0:M-1
            if n-m>0
                y[n]+=b[m+1]*g[n-m]
            end
        end
        for k in 1:K-1
            if n-k>0
                y[n]-=a[k+1]*y[n-k]
            end
        end
        y[n]/=a[1]
    end
    return y
end

b = [0.2, 0.2, 0.2]           # filtr uśredniający (FIR)
a = [1.0]                     # brak sprzężenia (FIR)
x = [1.0, 2.0, 3.0, 4.0, 5.0]

y = lti_filter(b, a, x)
println(y)