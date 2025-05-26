filename1,filename2 = input().strip().split()
file1 = open(filename1); file2 = open(filename2)

def readfile(filename):
    sid_l = []
    for line in filename:
        sid, grade = line.strip().split()
        sid = sid
        sid_l.append([sid, grade])
    return sid_l

l1 = readfile(file1)
l2 = readfile(file2)
lx = l1+l2

new_lx = []
for sid, grade in lx:
    sid = sid[-2:] + sid[:-1]
    new_lx += [[sid, grade]]

fac = sorted(new_lx)

for sid, grade in fac:
    sid = sid[2:-1] + sid[:2]
    new_lx += [[sid, grade]]
    print(sid, grade)