import sys


def even(x):
    return x % 2 == 0


def odd(x):
    return x % 2 != 0


def even_or_odd(x):
    if even(x):
        return 'Even'
    return 'Odd'


if __name__ == '__main__':
    x = int(sys.argv[1])
    even_or_odd(x)
