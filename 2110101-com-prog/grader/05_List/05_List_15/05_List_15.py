x = [int(x) for x in input().split()]
x.sort()
n = len(x)

c = 0
diff = []

for i in range(n):
    if x[i] != x[i-1]:
        c += 1
        diff.append(x[i])

print(c)
print(diff[:10])