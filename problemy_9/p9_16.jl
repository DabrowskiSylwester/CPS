function conv(f::Vector,g::Vector)::Vector
    N=length(f)
    M=length(g)
    K=N+M-1
    v=zeros(Float64,K)
    for n in 0:K-1
        for m in 0:M-1
         if  0<=n-m<N
                v[n+1]+=g[m+1]*f[n-m+1]
         end
        end
    end
    return v
end

f = [1.0, 2.0, 3.0, 4.0]
g = [0.0, 1.0, 0.5]
conv(f, g)  # expected: [0.0, 1.0, 2.5, 4.0, 5.5, 2.0]