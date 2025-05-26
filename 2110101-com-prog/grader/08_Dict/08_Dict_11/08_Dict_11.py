def reverse(d):
    return {y: x for x, y in d.items()}

def keys(d, v):
    lst = []
    for i, j in d.items():
        print(j)
        if j == v:
            lst.append(i)
    return lst
    
exec(input().strip())