def rectangle_side(a, area):
    b = area / a
    return b


def input_rectangle_side(*args, **kwargs):
    def wrapper(*args, **kwargs):
        a = float(input('What is the side a of the rectangle (cm)? = '))
        area = float(input('What is the area of the rectangle? (cm²) = '))
        b = rectangle_side(a, area)
        
        print(f'\nSide b = {round(b, 3)} cm')
        
    return wrapper


@input_rectangle_side
def get_rectangle_side():
    return


if __name__ == '__main__':
    get_rectangle_side()