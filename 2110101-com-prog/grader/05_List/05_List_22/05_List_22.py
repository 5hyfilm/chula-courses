x = input()

ids = []
grades = []

while x != 'q':
    idx, g = x.split()
    ids.append(idx)
    grades.append(g)
    x = input()

uids = [x for x in input().split()]

for i in uids:
    uids_i = ids.index(i)

    if grades[uids_i] == 'F':
        grades[uids_i] = 'D'
    elif grades[uids_i] == 'D':
        grades[uids_i] = 'D+'
    elif grades[uids_i] == 'D+':
        grades[uids_i] = 'C'
    elif grades[uids_i] == 'C':
        grades[uids_i] = 'C+'
    elif grades[uids_i] == 'C+':
        grades[uids_i] = 'B'
    elif grades[uids_i] == 'B':
        grades[uids_i] = 'B+'
    elif grades[uids_i] == 'B+':
        grades[uids_i] = 'A'

ans = []
ans = [[ids[i], grades[i]] for i in range(len(ids))]

for j in sorted(ans):
    print(j[0], j[1])