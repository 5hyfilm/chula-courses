check = True

lst = []
while check == True:
    station = input().split()
    lst.append(station)
    if len(station) == 1:
        check = False

start = ' '.join([str(elem) for elem in lst[-1]])

for i in range(len(lst)):
    if start in lst[i]:
        print(lst[i])


# Siam ChitLom
# ChitLom PhloenChit
# PhloenChit Nana
# Siam