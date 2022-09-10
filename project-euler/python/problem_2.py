from typing import Tuple, List

def fibonacci(n: int) -> List[int]:
    raiz5 = 5**(1/2)
    return int((1/raiz5)*(pow((1+raiz5)/2,n)-pow((1-raiz5)/2,n)))

def sum_even(seq: List[int]) -> int:
    sum_value = 0
    for i in seq:
        if i%2 == 0:
            sum_value += i
    return sum_value

def get_n_even_fibonacci_terms_sum(n: int, return_seq=False) -> Tuple[List[int], int]:
    seq = []
    i = 1
    while fibonacci(i) < n+1:
        seq.append(fibonacci(i))
        i += 1
    if return_seq:
        return seq, sum_even(seq)
    else:
        return sum_even(seq)

if __name__ == '__main__':
    print('fibonacci values that not exceed 4e6')
    seq, sum_evens = get_n_even_fibonacci_terms_sum(int(4e6), return_seq=True)
    print('\nsequence from 1 to', len(seq), 'terms')
    print(seq)
    print('\neven values sum')
    print(sum_evens)