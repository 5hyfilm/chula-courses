n = int(input())
lst = []
i = 0
while i < n:
    info = input().split()
    lst.append(info)
    i+=1

choose_lst = []

print(lst)

cmd = input().split()
num = len(cmd)

for l in lst:
    if cmd[1] in l:
        break



# for x in cmd:
#     for l in lst:
#         print(l)
#         if x in l:
#             choose_lst.append(l)
#         else:
#             pass
            
# print(choose_lst)

# Krit A 97 CP
# Oat A 98 CE
# Pim C 99 CP
# Art C 97 CP
# CP C 