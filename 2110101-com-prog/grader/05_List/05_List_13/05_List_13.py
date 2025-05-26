n = int(input())

input1_l = []
i = 0
while i < n:
    input1 = int(input()) 
    input1_l.append(input1)
    i+=1

input2_l = [int(i) for i in input().split()]

n3 = 0
input3_l = []
while n3 != -1: 
    n3 = int(input())
    input3_l.append(n3)
input3_l.pop(-1)

input_all = input1_l + input2_l + input3_l

new_l = [input_all[0]]

input_all.pop(0)
for i in range(len(input_all)):
    if i%2 == 0:
        new_l.insert(0, input_all[i])
    else:
        new_l.append(input_all[i])
print(new_l)