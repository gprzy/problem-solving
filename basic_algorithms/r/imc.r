imc <- function(weight, height){
    imc_value <- weight / height^2
    return(imc_value)
}

print(imc(63, 1.76))
