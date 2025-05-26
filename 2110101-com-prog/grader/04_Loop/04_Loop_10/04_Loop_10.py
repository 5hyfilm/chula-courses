a = float(input())
L = 0
U = a

count = 0
while U != 0:
    U = U//10
    count += 1

U = count
x = (L+U)/2

while abs(10**x-a) > (10**-10)*max(a, x**2):
    if 10**x > a:
        U = x
    else:
        L = x 
    x = (L+U)/2
print(round(x, 6))