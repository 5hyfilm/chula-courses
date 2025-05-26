operator = input().strip()
n = int(input())
text_lst = []

for t in range(n):
    text = input().strip()
    text_lst.append(text)
for e in range(len(text_lst)):
    if len(text_lst[e]) != len(text_lst[e-1]):
        print('Invalid size')
        break
else:

    length = len(text)

    if operator == '90':
        for i in range(length):
            for j in range(n-1, -1, -1):
                print(text_lst[j][i], end='')
            print()

    elif operator == 'flip':
        for i in text_lst:
            print(i[::-1])
            
    elif operator == '180':
        flip_lst = []
        for i in text_lst:
            flip_lst.append(i[::-1])
        flip_lst.reverse()
        for j in flip_lst:
            print(j)