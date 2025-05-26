d = {'A': 'A',
    'B': 'B'}

def f1(x): 
    d = []
    for k,v in x.items():
        if k == v:
            d += [(k, 2*v)]
    return d

print(f1(d))

def f2(x):
    return [(y, 2*y) for y in x if a,b in x.items()]