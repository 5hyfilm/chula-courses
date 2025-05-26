x1, x2, x3, x4, x5 = [int(e) for e in input().split()]

ans = []

if x1 - x5 > x2:
    if x2 > x3 + x1:
        if x3 + x5 > x4:
            ans.append('C5')
        else:
            if x3 < x5:
                ans.append('C6')
            else:
                ans.append('C7')
            ans.append('C8')
    else:
        ans = None
else:
    if x2 - x1 > x3:
        ans = None
    else:
        if x4 < x5 + x1:
            if x3 + x2 > x5:
                ans.append('C3')
            else:
                ans.append('C2')
            ans.append('C4')
        else:
            ans.append('C1')

if ans == None:
    pass    
else:
    for i in ans:
        print(i)