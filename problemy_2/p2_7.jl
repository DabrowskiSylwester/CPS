function sierpinski(rzad,pole)
    for i in 1:rzad
        pole = 3/4*pole
    end
    return pole
end
@show sierpinski(3,1) 