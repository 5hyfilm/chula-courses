L = 0
a = float(input())
U = a
x = (L+U)/2

while abs(10**x-a) > (10**-10)*max(a, x**2):
    if 10**x > a:
        U = x
    else:
        L = x 
    x = (L+U)/2
print(round(x, 6))