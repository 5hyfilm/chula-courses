n = int(input())
lst = []
data = {}
i = 0
while i < n:
    idx, towns = input().split(': ')
    town = towns.split(', ')
    data[idx] = town
    lst.append(idx)
    i+=1

search = input()    
target = data[search]

ans = []
for k in lst:
    for x in target:
        if x[0] in data[k]:
            ans.append(k) 
            break
        
ans.remove(search)
if len(ans) > 0:
    for y in ans:
        print(y)
else:
    print('Not Found')