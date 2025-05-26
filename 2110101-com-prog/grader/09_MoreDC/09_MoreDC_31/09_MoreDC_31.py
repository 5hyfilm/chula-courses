def gcd(a, b):
    while b != 0:
        a, b = b, a%b
    return a

def is_coprime(a, b, c):
    return gcd(gcd(a, b),c)== 1

def primitive_Pythagorean_triples(max_len):
    lst = []
    for n in range(1, max_len+1):
        for m in range(n+1, max_len+1):
            a = m**2 - n**2
            b = 2*m*n
            c = n**2 + m**2
            if is_coprime(a, b, c) and c <= max_len:
                lst.append(sorted([a, b, c]))
    lst.sort(key=lambda x: x[-1])

    # for i in range(len(lst)):
    #     if lst[i][2] == lst[i-1][2] and lst[i][2] != 65:
    #         lst[i-1], lst[i] = lst[i], lst[i-1]        
    return lst

exec(input().strip())