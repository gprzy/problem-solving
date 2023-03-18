function rectangle_measurements(a, b)
    area = a*b
    diagonal = sqrt(a^2 + b^2)
    return area, diagonal
end

println(rectangle_measurements(10, 20))
