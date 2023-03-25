fibonacci <- function(n) {
    sequence <- c(0, 1)

    for (i in 1 : (n - 2)){
        last <- tail(sequence, n = 1)
        before_last <- tail(sequence, n = 2)[1]

        sequence <- append(
            sequence, last + before_last
        )
    }

    return(sequence)
}

# how many fibo terms are necessary to
# approximate phi with a less than 10^-4 error?

phi <- (1 + sqrt(5)) / 2

approximate_phi <- function(error = 1e-4,
                            phi = (1 + sqrt(5)) / 2,
                            phi_hat = 0,
                            n = 0) {
    while (abs(phi - phi_hat) > error) {
        fibo_sequence <- fibonacci(n)

        last <- tail(fibo_sequence, n = 1)
        before_last <- tail(fibo_sequence, n = 2)[1]

        phi_hat <- last / before_last
        n <- n + 1
    }
    return(c(phi_hat, fibo_sequence))
}


cat("fibonacci of 8 elements = ", fibonacci(8))

approx_results <- approximate_phi()
phi_hat <- approx_results[1]
fibo_sequence <- approx_results[2:(length(approx_results) - 1)]

cat("\n\nphi = ", phi)

cat(
    "\nphi approximation with an error < 1e-4 = ", phi_hat
)

cat("\nnumber of sequence elements = ", length(fibo_sequence))

last <- tail(fibo_sequence, n = 1)
before_last <- tail(fibo_sequence, n = 2)[1]

cat(
    "\ndivided numbers = ", last, "/", before_last
)

cat("\nfibonacci sequence = ", fibo_sequence)
cat("\nerror = ", abs(phi - phi_hat))
