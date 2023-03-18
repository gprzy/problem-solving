function museum_ticket_price(age)
    base_value = 10

    if age < 5 || age > 70
        ticket_price = base_value*0 
    elseif age >= 5 && age <= 12
        ticket_price = base_value/2
    elseif age >= 13 && age <= 17
        ticket_price = base_value*0.8
    elseif age >= 18 && age <= 70
        ticket_price = base_value
    end

    return ticket_price
end


function museum()
    while true
        println("------------------------------------------------")
        println("Welcome to the Museum!\n")

        println("What is your option?")
        println("\t1. Get the ticket price")
        println("\tq. Exit the museum")

        option = readline()

        if option == "q"
            break
        end
        
        println("\nWhat is your age?")
        age = parse(Int, readline())

        ticket_price = museum_ticket_price(age)
        println("\nYour ticket price is = \$ ", ticket_price, "\n")
    end
end


museum()
