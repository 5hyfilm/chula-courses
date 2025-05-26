d = {'A': '124',
    'B': '345'}

def f(d):
    x = {}
    for e in d.keys():
        x[e] = []
    for k in d:
        for e in d[k]:
            x[e] += [k]
    return x
print(f(d))