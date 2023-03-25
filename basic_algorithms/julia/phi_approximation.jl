function fibonacci(n)
    sequence = [0, 1]
    for i in 0:n-3
        push!(sequence, sequence[end-1] + sequence[end])
    end

    return sequence
end

# how many fibo terms are necessary to
# approximate phi with a less than 10^-4 error?

phi = (1 + sqrt(5)) / 2

function approximate_phi(error=1e-4,
                         phi=phi,
                         phi_hat=0,
                         n=0)
    fibo_sequence = []
    while abs(phi - phi_hat) > error
        fibo_sequence = fibonacci(n)
        phi_hat = fibo_sequence[end] / fibo_sequence[end-1]
        n += 1
    end
    return phi_hat, fibo_sequence
end


println("fibonacci of 5 elements = ", fibonacci(5))

phi_hat, fibo_sequence = approximate_phi()

println("\nphi = ", phi)

println(
    "phi approximation with an error < 1e-4 = ", phi_hat
)

println("number of sequence elements = ", size(fibo_sequence))

println(
    "divided numbers = ", fibo_sequence[end], "/", fibo_sequence[end-1]
)

println("fibonacci sequence = ", fibo_sequence)
println("error = ", abs(phi - phi_hat))
