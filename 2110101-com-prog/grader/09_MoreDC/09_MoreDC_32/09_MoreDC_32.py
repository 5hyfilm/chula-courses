import copy

def first_fit(L, e):
    for num in L:
        if sum(num)+e <= 100:
            num.append(e)
            return L
    L.append([e])
    return L

def best_fit(L, e):
    new  = copy.deepcopy(L)
    morethan100 = True
    if len(L) == 0:
        return L.append([e])

    for i in range(len(new)):
        if sum(new[i])+e <= 100:
            new[i].append(e)
            morethan100 = False
    if morethan100 == True:
        L.append([e])

    lst = []
    for j in new:
        lst.append(sum(j))
    m = max(lst)
    idx = lst.index(m)
    L[idx] = new[idx]
    return L    

def partition_FF(D):
    lst = []
    for e in D:
        first_fit(lst, e)
    return lst

def partition_BF(D):
    lst = []
    for e in D:
        best_fit(lst, e)
    return lst

exec(input().strip())