def row_number(t, e):
    for i in range(len(t)):
        if e in t[i]:
            return i

def flatten(t):
    lst = []
    for i in range(len(t)):
        for j in range(len(t)):
            if t[i][j] != 0:
                lst.append(t[i][j])
    return lst

def inversions(x):
    c = 0
    for i in range(len(x)):
        for j in range(i+1, len(x)):
            if x[i] > x[j]:
                c+=1
    return c

def solvable(t):
    idx = row_number(t, 0)
    inv = inversions(flatten(t))
    if len(t) % 2 != 0 and inv % 2 == 0:
        return True
    else:
        if inv % 2 != 0 and idx % 2 == 0:
            return True
        elif inv % 2 == 0 and idx % 2 != 0:
            return True
    return False

exec(input().strip())