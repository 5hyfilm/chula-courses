import math

n = int(input())
min_n = (math.sqrt(2*math.pi)) * (n**(n+(1/2))) * (math.e**(-n+(1/(12*n+1))))
max_n = (math.sqrt(2*math.pi)) * (n**(n+(1/2))) * (math.e**(-n+(1/(12*n))))
print(min_n)
print(max_n)