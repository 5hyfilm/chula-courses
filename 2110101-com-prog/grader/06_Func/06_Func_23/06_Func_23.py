def make_int_list(x):
    y = [int(i) for i in x.split()]
    return y

def is_odd(e):
    if e%2 != 0:
        return True
    return False

def odd_list(alist):
    new_list = []
    for n in alist:
        if is_odd(n) == True:
            new_list.append(n)
    return new_list

def sum_square(alist):
    i = 0
    for n in alist:
        n = n*n
        alist[i] = n
        i+=1
    return sum(alist)

exec(input().strip())