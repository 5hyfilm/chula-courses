N = int(input())

tel_dict = {}
name_dict = {}

i = 0
while i < N:
    first, last, tel = [x for x in input().split()]
    name = first + ' ' + last
    tel_dict[name] = tel
    name_dict[tel] = name
    i+=1

M = int(input())
j = 0
while j < M:
    search = input()
    if search in tel_dict:
        print(search, '-->', tel_dict[search])
    elif search in name_dict:
        print(search, '-->', name_dict[search])
    else:
        print(search, '--> Not found')
    j+=1