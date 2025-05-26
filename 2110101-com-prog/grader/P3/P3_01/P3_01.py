n = int(input())
k = int(input())

if n < 1 and k < 1:
    print('Invalid n and k')
elif n < 1:
    print('Invalid n')
elif k < 1:
    print('Invalid k')

else:
    out = [str(i)+(n+1-len(str(i)))*'-' for i in range(1,k)]
    out.append(str(k)+(n-len(str(k)))*'-')
    print(''.join(out))

    gray_lst = []
    for i in range(0, 1<<n):
        gray = i^(i>>1)
        gray_code = "{0:0{1}b}".format(gray,n)
        gray_lst.append(gray_code)

    for j in range(0, len(gray_lst), k):
        print(','.join(gray_lst[j: j+k]))