import numpy as np

def toCelsius(f):
    return (f-32)*(5/9)

def BMI(wh):
    return wh[: : ,0]/ (wh[: : , 1]/100)**2

def distanceTo(p, Points):
    lst = []
    for point in Points:
        ans = np.sqrt(pow((p[0] - point[0]), 2) + pow((p[1] - point[1]), 2))
        lst.append(ans)
    return np.array(lst)

exec(input().strip())