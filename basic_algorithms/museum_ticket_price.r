museum_ticket_price <- function(age){
    base_value <- 10

    if(age < 5 || age > 70) {
        ticket_price <- base_value*0
    } else if(age >= 5 && age <= 12) {
        ticket_price <- base_value/2
    } else if(age >= 13 && age <= 17) {
        ticket_price <- base_value*0.8
    } else if(age >= 18 && age <= 70) {
        ticket_price <- base_value
    }

    return(ticket_price)
}


museum <- function(){
    while(TRUE) {
        cat('------------------------------------------------')
        cat('\nWelcome to the Museum!\n')

        cat('What is your option?\n')
        cat('\t1. Get the ticket price\n')
        cat('\tq. Exit the museum\n')

        option <- readline()

        if(option == 'q') {
            break
        }

        age <- as.integer(readline(prompt='\nWhat is your age?'))

        ticket_price <- museum_ticket_price(age)
        cat('Your ticket price is = $', ticket_price, '\n')
    }
}


museum()
