n = int(input())
lst = []
info = {}
i = 0
while i < n:
    name, group, year, department = set(input().split())
    info[name] = [group, year, department]
    lst.append(name)
    i+=1

lst.sort()
cmd = set(input().split())

for l in lst:
    if cmd <= set(info[l]):
        print(l, ' '.join(info[l]))
    else:
        print('Not Found')

# Krit A 97 CP
# Oat A 98 CE
# Pim C 99 CP
# Art C 97 CP
# CP C 