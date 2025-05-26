N = int(input())

name_dict = {}
code_dict = {}
item_dict = {}

i = 0
while i < N:
    first, last, code, item = [x for x in input().split()]
    name = first + ' ' + last
    name_dict[code] = name
    code_dict[name] = code
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