# 4. Largest palindrome product 
# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome(string):
    for i in range(len(string)//2+1):
        if string[i] == string[-1*(i+1)]:
            continue
        else:
            return False
    return True

def max_palindrome_number_of_two_3_digit_mult():
    palindromos, products = [], []
    for i in range(80,999+1):
        for k in range(80,999+1):
            if is_palindrome(str(i*k)):
                palindromos.append((i, k))
                products.append(i*k)

    for t in palindromos:
        if t[0] * t[1] == max(sorted(products)):
            return t[0] * t[1]

if __name__ == '__main__':
    print(max_palindrome_number_of_two_3_digit_mult())