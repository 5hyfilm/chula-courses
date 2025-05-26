n = int(input())
department_d = {}
i = 0
while i < n:
    department, amount = input().split()
    department_d[department] = int(amount)
    i+=1

m = int(input())
std_lst = []
j = 0
while j < m:
    idx, score, want1, want2, want3, want4 = input().split()
    std_lst.append((float(score), idx, want1, want2, want3, want4))
    j+=1
std_lst.sort(reverse=True)

result = []
for m in std_lst:
    for n in range(2, 6):
        if department_d[m[n]] == 0:
            pass
        else:
            result.append([m[1], m[n]])
            department_d[m[n]]-=1           
            break

for ans in sorted(result):
    print(ans[0], ans[1])