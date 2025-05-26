def factor(N):
    k = 2
    lst = []
    while k < N:
        c = 0
        while N%k == 0:
            N = N/k
            c+=1
        if  c > 0:
            lst.append([k, c])
        k+=1
    return lst

exec(input().strip())