using CairoMakie
impulse_reapeter(fun::Function,t1::Real,t2::Real)::Function = x->fun(mod(x-t1,t2-t1)+t1)


fun(x)=x^2+3

t1=0
t2=2
g=impulse_reapeter(fun,t1,t2)
t=0:0.01:9
wynik=g.(t)
lines(t,wynik)