def sum_all_multiples_of(n: int, a, b) -> int:
    sum_value = 0
    for i in range(1, n):
        if i%a == 0 or i%b == 0:
            sum_value += i
    return sum_value

if __name__ == '__main__':
    print('sum of all multiples of 3 or 5 from 1 to 999')
    print(sum_all_multiples_of(n=1000, a=3, b=5))