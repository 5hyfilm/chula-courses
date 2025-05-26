import numpy as np

def read_data():
    w = [float(e) for e in input().split()]
    weight = np.array(w)
    n = int(input())
    data = np.ndarray((n, 4), int)
    for i in range(n):
        data[i] = [int(e) for e in input().split()]
    return weight, data

def report_lower_than_mean(weight, data):
    stu_id = data[:, 0]
    score = data[:,1:]
    weight_score = (score*weight)
    sum_score = np.sum(weight_score, axis=1)
    lower = stu_id[sum_score < np.mean(sum_score)]
    ans = [str(idx) for idx in lower]
    if len(ans) == 0:
        print('None')
    else:
        print(', '.join(ans))

exec(input().strip())