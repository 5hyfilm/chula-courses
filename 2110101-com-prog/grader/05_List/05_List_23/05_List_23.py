n = int(input())
point_lst =[]
for i in range(n):
    x, y = [float(e) for e in input().split()]
    z = x**2 + y**2
    point_lst.append([z, i+1, x, y])
point_lst.sort()

print('#' + str(point_lst[2][1]) +':', '(' + str(point_lst[2][2]) + ',', str(point_lst[2][3]) + ')')