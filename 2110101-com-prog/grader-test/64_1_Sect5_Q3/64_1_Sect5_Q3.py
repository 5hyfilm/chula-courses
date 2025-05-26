N = int(input())
info_lst = []
check_lst = []

for n in range(N):
    info = input().split()
    info_lst.append(info)
    check_lst.append(info[0] + info[1])

def find_index(target):
    for i, lst in enumerate(info_lst):
        for j,info_ in enumerate(lst):
            if info_ == target:
                return i
    return None

manage = input().split()
while manage[0] != 'exit':
    if manage[2] == 'deposit':
        if manage[0] + manage[1] in check_lst:
            idx = find_index(manage[0])
            total = info_lst[idx][-1]
            info_lst[idx][2] = float(info_lst[idx][2])
            info_lst[idx][2] += float(manage[3])
            if info_lst[idx][2] // 1 == info_lst[idx][2]:
                    info_lst[idx][2] = int(info_lst[idx][2])
            print(info_lst[idx][0], '('+str(info_lst[idx][1])+')', info_lst[idx][2])
        elif find_index(manage[0]) != find_index(manage[1]) and isinstance(find_index(manage[1]), int) == True:
            print('Transaction Failed')
            
        else:
            new_acc = [manage[0], manage[1], float(manage[3])]
            if new_acc[2] // 1 == new_acc[2]:
                    new_acc[2] = int(new_acc[2])
            info_lst.append(new_acc)
            print(new_acc[0], '('+str(new_acc[1])+')', new_acc[2])

    elif manage[2] == 'withdraw':
        if manage[0] + manage[1] in check_lst:
            idx = find_index(manage[0])
            total = info_lst[idx][-1]
            if float(total) >= float(manage[3]):
                info_lst[idx][2] = float(info_lst[idx][2])
                info_lst[idx][2] -= float(manage[3])
                if info_lst[idx][2] // 1 == info_lst[idx][2]:
                    info_lst[idx][2] = int(info_lst[idx][2])
                print(info_lst[idx][0], '('+str(info_lst[idx][1])+')', info_lst[idx][2])
            else:
                print('Transaction Failed')
        else:
            print('Transaction Failed')

    elif manage[2] == 'transfer':
        if manage[0] + manage[1] in check_lst:
            idx = find_index(manage[0])
            t_idx = find_index(manage[3])
            total = info_lst[idx][-1]
            if float(total) >= float(manage[4]):
                info_lst[idx][2] = float(info_lst[idx][2])
                info_lst[idx][2] -= float(manage[-1])
                info_lst[t_idx][2] = float(info_lst[t_idx][2])
                info_lst[t_idx][2] += float(manage[-1])
                if info_lst[idx][2] // 1 == info_lst[idx][2]:
                        info_lst[idx][2] = int(info_lst[idx][2])
                if info_lst[t_idx][2] // 1 == info_lst[t_idx][2]:
                        info_lst[t_idx][2] = int(info_lst[t_idx][2])
                print(info_lst[idx][0], '('+str(info_lst[idx][1])+')', info_lst[idx][2])
                print(info_lst[t_idx][0], '('+str(info_lst[t_idx][1])+')', info_lst[t_idx][2])
            else:
                print('Transaction Failed')
        else:
            print('Transaction Failed')
    manage = input().split()