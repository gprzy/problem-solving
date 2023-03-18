function factorial_iterative(n)
    mult = 1
    for i in 1:n
        mult *= i
    end

    return mult
end


function factorial_recursive(n)
    if n == 0
        return 1
    end

    return n * factorial_recursive(n-1)
end


println(factorial_iterative(5))
println(factorial_recursive(5))
