import sys
from math import pow


def cubic_root(x):
    return pow(x, 1/3)


if __name__ == '__main__':
    x = float(sys.argv[1])
    root = cubic_root(x)
    print(root)
