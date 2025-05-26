# N = 5

# def pattern1(N):
#   for i in range(1, N):
#     print()
#     for j in range(1, i):
#         print(j, end=' ')

# pattern1(N)

# num = int(input())
# for i in range(1, num+1):
#     print('0 '*(num-i), i)

k = 1
for i in range(0, 5):
    for j in range(0, i+1):
        print(k, end=" ")
        [k] = [k + 1]
    print()