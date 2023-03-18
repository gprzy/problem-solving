factorial_iterative <- function(n){
    mult <- 1
    
    for(i in 1:n){
        mult = mult * i
    }

    return(mult)
}


factorial_recursive <- function(n){
    if(n == 0){
        return(1)
    }

    return(n * factorial_recursive(n-1))
}


print(factorial_iterative(5))
print(factorial_recursive(5))
