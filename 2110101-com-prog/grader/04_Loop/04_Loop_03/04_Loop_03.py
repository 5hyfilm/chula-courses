ans = input()
stu = input()

score = 0

if len(ans) == len(stu):
    for i, j in enumerate(ans):
        if ans[i] == stu[i]:
            score += 1
    print(score)
else:
    print('Incomplete answer')
