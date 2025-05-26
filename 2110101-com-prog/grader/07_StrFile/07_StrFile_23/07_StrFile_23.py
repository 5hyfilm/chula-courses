filename, year = input().split()
target = year[2:]
f = open(filename, 'r')
lines = f.readlines()

score_lst = []
for l in lines:
    std_id, score = l.split()
    if std_id[:2] == target:
        score_lst.append(score)

if len(score_lst) > 0:
    new_score_lst = []
    for e in score_lst:
        new_e = e.replace('\n', '')
        new_e = float(new_e)
        new_score_lst.append(new_e)

    print(min(new_score_lst), max(new_score_lst), (sum(new_score_lst)/len(new_score_lst)))

else:
    print('No data')