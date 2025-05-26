def add_poly(p1,p2):
    for i in range(len(p1)):
        for item in p2:
            if p1[i][1] == item[1]:
                p1[i] = ((p1[i][0] + item[0]),p1[i][1])
                p2.remove(item)
    p3 = p1 + p2
    for item in (p3):
        if item[0] == 0:
            p3.remove(item)
    return sorted(p3, key=lambda x: x[1], reverse=True)

def mult_poly(p1, p2):
    p3 = []
    s = 0
    for i in p1:
        c = []
        for j in p2:
            s = i[0] * j[0]
            e = i[1] + j[1]
            c.append((s,e))
        p3 = add_poly(c, p3)
    return p3

for i in range(3):
    exec(input().strip())

# https://stackoverflow.com/q/39057546/9956949