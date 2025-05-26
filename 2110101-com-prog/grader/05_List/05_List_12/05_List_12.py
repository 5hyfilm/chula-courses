N = int(input())

name = ['Robert', 'William', 'James', 'John', 'Margaret', 'Edward', 'Sarah', 'Andrew', 'Anthony', 'Deborah']
nickname = ['Dick', 'Bill', 'Jim', 'Jack', 'Peggy', 'Ed', 'Sally', 'Andy', 'Tony', 'Debbie']

i = 0
while i < N:
    name_x = input()
    if name_x in name:
        name_i = name.index(name_x)
        print(nickname[name_i])
    elif name_x in nickname:
        name_i = nickname.index(name_x)
        print(name[name_i])
    else:
        print('Not found')
    i+=1