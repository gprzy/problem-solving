def imc(weight, height):
    return weight / height**2


def input_imc():
     weight = float(input('What is your weight (kg)? '))
     height = float(input('What is your height (m)? '))

     imc_value = imc(weight, height)
     print(f'\nYour IMC = {round(imc_value, 3)} kg/m²')


if __name__ == '__main__':
     input_imc()
