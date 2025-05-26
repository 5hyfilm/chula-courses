import math

a, b, c = input().split(',')

x = int(a+b+c)
y = int(a+b)
n = x-y

db = 10**len(b)
dc = (10**len(c))-1
d = db*dc

g = math.gcd(n, d)

print(int(n//g), '/', int(d//g))