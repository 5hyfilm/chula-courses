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
    point = np.ndarray((data.shape[0],3),float)
    point = data[:,1:4]*weight
    print(point)
    point = point[:,0]+point[:,1]+point[:,2]
    print(point)
    avg = np.average(point)
    stdid = data[:,0]
    stdid = stdid[point<avg].tolist()
    print(stdid)
    k = [str(e) for e in stdid]
    # if len(k)>0 : print(', '.join(k))
    # else : print('None')
exec(input().strip())

# w,d = read_data(); report_lower_than_mean(w,d)
# 0.3 0.5 0.2
# 2
# 610111 80 90 80
# 610222 90 80 90
