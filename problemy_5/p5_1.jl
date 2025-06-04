using CairoMakie
function quantize(L)
    return function(x)
        wynik=[]
        for l in L
            push!(wynik,abs(x-l))
        end
        minval=minimum(wynik)
        a=findfirst(minval.==wynik)
        return L[a]
    end
end

L=-1:0.1:1
q=quantize(L)
t=0:0.001:7
sin_quasicon=sin.(t)
sin_quantizied=q.(sin_quasicon)
scatter(t,sin_quantizied)
#scatter(t,sin_quasicon)