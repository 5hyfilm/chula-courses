y = [float(i) for i in input().split()]

max_num_l = []
for i in range(1, len(y)-1):
    if y[i] > y[i-1] and y[i] > y[i+1]:
        max_num = y[i]
        max_num_l.append(max_num)
print(len(max_num_l))