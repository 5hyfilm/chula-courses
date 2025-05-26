from itertools import permutations, product
import math

num_list = []

def generate_all_combinations(num_list, operators):
    all_combi = []
    for n,o in product(sorted(set(permutations(num_list))), product(operators, repeat=3)):
        x = [None]*(len(n)+len(o))
        x[::2] = n
        x[1::2] = o
        all_combi.append(x)
    return all_combi

def calc(num1, op, num2):
    if op == '+':
        ans = num1 + num2
    elif op == '-':
        ans = num1 - num2
    elif op == '*':
        ans = num1 * num2
    elif op == '/':
        ans = num1/num2
    return ans


nums = input('Enter 4 integers: ')
nums = [int(n) for n in nums.split()]
# print(nums)

# nlist = [1, 2, 3, 4]
operation = '+-*/'

cases = generate_all_combinations(nums, operation)

print(nums)

# for case in cases:
#     print(case)

