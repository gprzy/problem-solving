function bhaskara(a, b, c)
    delta = b^2 - 4*a*c
    x1 = -b + sqrt(delta) / 2*a
    x2 = -b - sqrt(delta) / 2*a

    return x1, x2
end

println(bhaskara(1, 4, 1))
