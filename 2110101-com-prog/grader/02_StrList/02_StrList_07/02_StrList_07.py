n = str(input())

def decryption(n, i1, i2):
    dig_list = []
    while i1 < len(n):
        dig = n[i1]
        dig_list.append(int(dig))
        i1 += i2
    x = sum([j*(10**(4-i)) for i, j in enumerate(dig_list)])
    return x

n1 = decryption(n, 3, 7)
n2 = decryption(n, 7, 5)
n3 = n1 + n2 + 10000
n4 = str(n3)[-4:-1]
x1, x2, x3 = int(n4[0]), int(n4[1]), int(n4[2])
x = x1 + x2 + x3
y = int(str(x)[-1]) + 1
z = chr(y + 64)
print(n4 + z)