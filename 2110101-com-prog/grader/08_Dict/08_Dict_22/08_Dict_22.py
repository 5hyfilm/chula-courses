N = int(input())
ice_dict = {}
i = 0
while i < N:
    name, price = [x for x in input().split()]
    ice_dict[name] = float(price)
    i+=1
    
M = int(input())
sale_dict = {}
j = 0
while j < M:
    item, num = [x for x in input().split()]
    if item in ice_dict:
        if item in sale_dict:
            sale_dict[item] += ice_dict[item]*int(num)
        else:
            sale_dict[item] = ice_dict[item]*int(num)
    j+=1

total = sum(sale_dict.values())
ice = []
for i in sale_dict.items():
    if i[1] == max(sale_dict.values()):
        ice.append(i[0])

if total == 0:
    print('No ice cream sales')
else:
    print('Total ice cream sales:', total)
    print('Top sales:', str(sorted(ice))[1: -1].replace("'", ""))